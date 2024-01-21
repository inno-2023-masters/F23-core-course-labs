import logging
from logging.handlers import RotatingFileHandler

import pytz
from flask import Flask, render_template, jsonify

from config import LOG_LEVEL, LOG_FILENAME, \
    LOG_MAX_BYTES, LOG_BACKUP_COUNT, LOG_FORMAT
from logic import get_moscow_time

logger = logging.getLogger()
logger.setLevel(LOG_LEVEL)

file_handler = RotatingFileHandler(
    LOG_FILENAME,
    maxBytes=LOG_MAX_BYTES,
    backupCount=LOG_BACKUP_COUNT)
file_handler.setLevel(LOG_LEVEL)

console_handler = logging.StreamHandler()
console_handler.setLevel(LOG_LEVEL)

formatter = logging.Formatter(LOG_FORMAT)

file_handler.setFormatter(formatter)
console_handler.setFormatter(formatter)

logger.addHandler(file_handler)
logger.addHandler(console_handler)

flask_app = Flask(__name__)


@flask_app.route('/')
def moscow_time():
    try:
        current_time = get_moscow_time()
        flask_app.logger.info('Moscow time fetched successfully.')
        return render_template("time.html", current_time=current_time)
    except pytz.UnknownTimeZoneError:
        flask_app.logger.error("Unknown TimeZone specified.")
        return "Error: Unknown TimeZone", 500
    except Exception as e:
        flask_app.logger.error(f"Unexpected error: {e}")
        return f"Unexpected error: {e}", 500


@flask_app.route('/health')
def health_check():
    """Health check endpoint"""
    return jsonify(status="healthy"), 200


if __name__ == "__main__":
    flask_app.run(host='0.0.0.0', port=53075, debug=False)
