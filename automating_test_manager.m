% Load the data from the below file to get all the variable data
load('acd.mat');
%------------------------------------------------------------------------------------------------------------------
% Loading the simulink Model
modelName='simple_switch_model';
open_system(modelName);
%------------------------------------------------------------------------------------------------------------------
% Creating the test harness having source as 'From Workspace' and Sink 'Outport'
sltest.harness.create(modelName, 'Name', 'simple_switch_model_Harnes', 'Source', 'From Workspace', 'Sink', 'Outport');
%------------------------------------------------------------------------------------------------------------------   
% Opening the test Harness model
sltest.harness.open(modelName,'simple_switch_model_Harnes');
%------------------------------------------------------------------------------------------------------------------
% test Manager
tf = sltest.testmanager.TestFile('simple_switch_model_Results1.mldatx');
ts = getTestSuites(tf);
tc = getTestCases(ts);
%------------------------------------------------------------------------------------------------------------------
% To provide the Sample Model & Test Harness Model to the Test Manager
setProperty(tc,'Model',modelName)
setProperty(tc, 'HarnessName', 'simple_switch_model_Harnes', 'HarnessOwner', modelName);
%----------------------------------------------------------------------------------------------------------------
% Capturing the Baseline
% baseline = captureBaselineCriteria(tc,'simple_switch_model_Baseline.xlsx',true);
% sc = getSignalCriteria(baseline);
% sc(1).AbsTol = 9;
%----------------------------------------------------------------------------------------------------------------
% Opening the test Manager & Running the test cases
sltest.testmanager.view;
%----------------------------------------------------------------------------------------------------------------
result = sltest.testmanager.run();
%----------------------------------------------------------------------------------------------------------------
exampleFile = 'simple_switch_model_Results1.mldatx';
sltest.testmanager.load(exampleFile);
%--------------------------------------------------------------------------
% Executing the test manager
%-------------------------------------------------------------------------
% Report Generation
sltest.testmanager.report(result,'test_repot.pdf',...
    'IncludeTestResults',0,'IncludeComparisonSignalPlots',true,...
    'IncludeSimulationSignalPlots',true,'NumPlotRowsPerPage',3);
