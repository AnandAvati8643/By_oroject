open('switch_test_case.mldatx');
sltest.testmanager.run()
sltest.testmanager.view;
sltest.testmanager.load('switch_test_case.mldatx');
%--------------------------------------------------------------------------
% Executing the test manager
%-------------------------------------------------------------------------
% Report Generation
sltest.testmanager.report(result,'test_repot.pdf',...
    'IncludeTestResults',0,'IncludeComparisonSignalPlots',true,...
    'IncludeSimulationSignalPlots',true,'NumPlotRowsPerPage',3);
