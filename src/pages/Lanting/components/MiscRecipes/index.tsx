import React, { useEffect } from 'react';
import { connect, Dispatch } from 'umi';
import ReactMarkdown from 'react-markdown';
import ChapterCard from '../ChapterCard';
import { StateType } from './model';

interface MiscRecipesProps {
  dispatch: Dispatch;
  lantingMiscRecipes: StateType;
  loading: boolean;
}

const MiscRecipes: React.FC<MiscRecipesProps> = ({
  dispatch,
  lantingMiscRecipes: { miscRecipesMd },
}) => {
  useEffect(() => {
    dispatch({
      type: 'lantingMiscRecipes/fetch',
    });
  }, []);

  return (
    <ChapterCard title={<h2>随园食单</h2>}>
      <ReactMarkdown source={miscRecipesMd} escapeHtml={false} />
    </ChapterCard>
  );
};

export default connect(
  ({
    lantingMiscRecipes,
    loading,
  }: {
    lantingMiscRecipes: StateType;
    loading: { models: { [key: string]: boolean } };
  }) => ({
    lantingMiscRecipes,
    loading: loading.models.lanting,
  }),
)(MiscRecipes);
