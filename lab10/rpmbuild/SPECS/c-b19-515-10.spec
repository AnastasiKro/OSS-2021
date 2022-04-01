Name:       c-b19-515-10
Version:    1.0
Release:    1%{?dist}
Summary:    Программа студента Kropova группы b19-515
Group:      Testing
License:    GPL
URL:        https://github.com/yaAvtobus/lab10
Source:     %{name}-%{version}.tar.gz
BuildRequires: gcc

%description
A test package

%prep
%setup -q

%build
gcc -O2 -o c-b19-515-10 c-b19-515-10.c

%install
mkdir -p %{buildroot}%{_bindir}
cp c-b19-515-10 %{buildroot}%{_bindir}
sudo rpm -i ~/rpmbuild/RPMS/noarch/b19-515-10-1.0-1.el7.noarch.rpm --force

%files
%{_bindir}/c-b19-515-10

%changelog
* Thu Apr 1 2022 <Kropova>
- Added %{_bindir}/c-b19-515-10
