FROM alpine
COPY bash1.sh .
RUN chmod ugo+x /bash1.sh
RUN apk add bash
CMD . ./bash1.sh
