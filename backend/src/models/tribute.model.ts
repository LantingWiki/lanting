import mongoose, { Schema, Document } from 'mongoose';

export interface ITribute extends Document {
  link: string;
  title: string;
  author: string;
  publisher: string;
  date: string;
  chapter: string;
  tag: string;
  remarks: string;
  createdAt: Date;
  updatedAt: Date;
}

const TributeSchema: Schema = new Schema(
  {
    link: { type: String, required: true },
    title: { type: String, required: true },
    author: { type: String, default: '' },
    publisher: { type: String, default: '' },
    date: { type: String, default: '' },
    chapter: { type: String, default: '' },
    tag: { type: String, default: '' },
    remarks: { type: String, default: '' },
  },
  { timestamps: true }
);

// This is commented out as MongoDB is not enabled yet
// export default mongoose.model<ITribute>('Tribute', TributeSchema);

// For now, we'll export the schema for future use
export { TributeSchema };
