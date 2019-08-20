{ pkgs ? import <nixpkgs> { }
, stdenv
, mkRosPackage
, robonomics_comm
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "drone_flight_report";
  version = "master";

  src = ./.;

  propagatedBuildInputs = [ robonomics_comm ];

  meta = with stdenv.lib; {
    description = "Service to register a drone flight via Robonmics Network";
    homepage = http://github.com/vourhey/drone_flight_report;
    license = licenses.bsd3;
    maintainers = with maintainers; [ vourhey ];
  };
}
