Name:          BlacklistServ
Version:       1.0
Release:       1%{?dist}
Summary:       Сервис студента Кроповой группы Б19-515, он выполняет проверку работающих служб, сверяет их с черным списком и при необходимости завершает служюы из чепного списка.
Group:         Testing
License:       GPL
URL:           https://github.com/yaAvtobus/ 
Source0:       %{name}-%{version}.tar.gz
BuildRequires: /bin/rm, /bin/mkdir, /bin/cp
Requires:      /bin/bash, /usr/bin/date
BuildArch:     noarch

%description
Service periodically checks the list of running services and kills services from the black list

%prep
%setup -q

%install
mkdir -p %{buildroot}%{_bindir}
#install -m 755 BlacklistServ %{buildroot}%{_bindir}
cp BlacklistServ.service %{buildroot}%{_bindir}

%files
%{_bindir}/BlacklistServ.service

%changelog
* Thu Oct 16 2012 <Kropova>
- Added %{_bindir}/BlacklistServ
