import React from 'react';
import ReactMarkdown from 'react-markdown';
import miscRecipesMd from '@/assets/archives/1000-随园食单.md';
import ChapterCard from '../ChapterCard';

const MiscRecipes: React.FC = () => (
  <ChapterCard title={<h2>随园食单</h2>}>
    <ReactMarkdown source={miscRecipesMd} escapeHtml={false} />
  </ChapterCard>
);

export default MiscRecipes;
