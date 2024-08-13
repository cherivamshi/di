import React, { useState, useEffect } from 'react';
import {
  WppInput,
  WppCheckbox,
  WppSelect,
  WppButton,
  WppTypography,
  WppListItem,
  WppSpinner,
  WppTooltip,
  WppIconHelp,
  WppIconClock,
} from 'eplatform-ui-kit/components-library-react';
import styles from './YourComponent.module.scss'; // If you have custom styles

const TriggerDAGStep = () => {
  const [logicalDate, setLogicalDate] = useState("2024-08-13T14:04:02");
  const [runId, setRunId] = useState("");
  const [surveys, setSurveys] = useState("US-21-1,US-21-2,US-21-3");
  const [testSuite, setTestSuite] = useState("db_file_checks");
  const [projectId, setProjectId] = useState("default");
  const [useAscription, setUseAscription] = useState(true);

  const handleRunClick = () => {
    console.log('Run triggered with:', {
      logicalDate,
      runId,
      surveys,
      testSuite,
      projectId,
      useAscription,
    });
  };

  return (
    <div className={styles.triggerDAG}>
      <WppTypography variant="h5" align="center">
        Trigger DAG: ao_qa
      </WppTypography>

      <div className={styles.field}>
        <WppTypography variant="subtitle1">Logical Date</WppTypography>
        <WppInput
          type="datetime-local"
          value={logicalDate}
          onChange={(e) => setLogicalDate(e.target.value)}
        />
      </div>

      <div className={styles.field}>
        <WppTypography variant="subtitle1">Run ID (Optional)</WppTypography>
        <WppInput
          placeholder="Run ID"
          value={runId}
          onChange={(e) => setRunId(e.target.value)}
        />
      </div>

      <div className={styles.field}>
        <WppTypography variant="subtitle1">Surveys</WppTypography>
        <WppInput
          value={surveys}
          onChange={(e) => setSurveys(e.target.value)}
        />
      </div>

      <div className={styles.field}>
        <WppTypography variant="subtitle1">Test Suite</WppTypography>
        <WppInput
          value={testSuite}
          onChange={(e) => setTestSuite(e.target.value)}
        />
      </div>

      <div className={styles.field}>
        <WppTypography variant="subtitle1">Project ID</WppTypography>
        <WppInput
          value={projectId}
          onChange={(e) => setProjectId(e.target.value)}
        />
      </div>

      <div className={styles.field}>
        <WppCheckbox
          checked={useAscription}
          onChange={(e) => setUseAscription(e.target.checked)}
          label="Use Ascription"
        />
      </div>

      <div className={styles.field}>
        <WppButton onClick={handleRunClick}>
          Run
        </WppButton>
      </div>
    </div>
  );
};

export default TriggerDAGStep;
