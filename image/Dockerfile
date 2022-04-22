FROM cern/cc7-base:20220401-1

MAINTAINER Enrico Bocchi <enrico.bocchi@cern.ch>


# Remove unwanted package
RUN yum -y remove \
      yum-autoupdate  && \
    yum clean all && \
    rm -rf /var/cache/yum


# Let's get started intalling...
# - yum plugins
RUN yum -y install \
       yum-plugin-priorities \
       yum-utils && \
    yum clean all && \
    rm -rf /var/cache/yum

# - the very essentials
RUN yum -y install \
      bash-completion \
      bind-utils \
      git \
      htop \
      jq \
      less \
      lsof \
      parallel \
      policycoreutils \
      uuid \
      svn \
      sudo \
      util-linux \
      which && \
    yum clean all && \
    rm -rf /var/cache/yum


# - Network tools
RUN yum -y install \
      curl \
      fping \
      iftop \
      iperf3 \
      net-tools \
      nload \
      nmap-ncat \
      tcpdump \
      telnet \
      traceroute \
      wget && \
    yum clean all && \
    rm -rf /var/cache/yum

# - LDAP tools
RUN yum -y install \
      openldap-clients && \
    yum clean all && \
    rm -rf /var/cache/yum

# - some text editors for convenience
RUN yum -y install \
      nano \
      vim && \
    yum clean all && \
    rm -rf /var/cache/yum

# - CVMFS
ADD ./repos.d/cvmfs.repo /etc/yum.repos.d/
RUN yum -y install \
      cvmfs \
      cvmfs-config-default && \
    yum clean all && \
    rm -rf /var/cache/yum

# - EOS
ADD ./repos.d/eos.repo /etc/yum.repos.d/
RUN yum install -y \
      eos-client \
      eos-fusex && \
    yum clean all && \
    rm -rf /var/yum/cache

