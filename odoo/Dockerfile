ARG MAJOR_VERSION
ARG REVISION_DATE
FROM icsglobe2018/odoo:$MAJOR_VERSION-$REVISION_DATE

USER root

COPY requirements.txt requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

USER odoo

COPY addons /mnt/custom-addons