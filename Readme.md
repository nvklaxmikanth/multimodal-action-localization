# **Ego4D GoalStep - Step Grounding**

## **Project Overview**

This project focuses on enhancing the VSLNet model for the *Ego4D Goal-Step Challenge*, which aims to localize action steps in untrimmed, first-person videos based on natural language descriptions. Our improvements include leveraging LaViLa-pretrained embeddings, stacked encoders, and vision-enhancer attention mechanisms to improve action localization accuracy.

## **Team Members**

- **Yuxi Liu** – Center for Data Science 
- **Venkat Kumar Laxmi Kanth Nemala** – Tandon School of Engineering 
- **Carla Zhao** – Center for Data Science 
- **Sijun Wei** – Center for Data Science  
- **Jingsheng Zhang** – Center for Data Science 

## **Motivation**

The challenge of accurately localizing action steps in egocentric videos is compounded by frequent scene transitions and diverse perspectives. Traditional models often struggle to align video and text representations effectively. This project addresses these issues with enhanced architectures for robust video-text alignment.

## **Approach**

1. **Baseline**:  
   - Fine-tuned VSLNet using embeddings from Omnivore and LaViLa on the Ego4D dataset.  
2. **Enhancements**:  
   - **Stacked Encoders**: Improved feature extraction by using two stacked visual encoders, achieving the best balance between model complexity and performance.  
   - **Vision-Enhancer Attention**: Added a vision-enhancer attention mechanism to improve context-query alignment.  
   - **Feature Extraction and Enhancer Modules**: Implemented modules inspired by GLIP to refine multimodal alignment.  

## **Results**

| **Model Configuration**                   | **Rank@1, mIoU@0.3** | **Rank@3, mIoU@0.3** | **mIoU** |
|-------------------------------------------|----------------------|----------------------|----------|
| **Baseline VSLNet-LaViLa-1280**           | 14.52                | 19.54                | 11.20    |
| **2 Stacked Encoders + Vision Enhancer**  | 14.98                | 20.05                | 11.51    |
| **Combined Feature Extraction + Enhancer**| 15.24                | 19.92                | 12.14    |

Our modifications improved action localization performance significantly, validating the efficacy of our enhancements.

## **Future Work**

- **Language-Guided Step Grounding**: Integrate guide blocks to dynamically adjust attention based on language cues.  
- **Advanced Multimodal Models**: Incorporate models like CLIP and Llava for better video-text alignment.

## **Dependencies**

- Python 3.x  
- PyTorch  
- TensorFlow  
- LaViLa and Omnivore embeddings  
- Ego4D Dataset  

## **Usage**

1. Clone the repository:  
   ```bash
   git clone <repository-link>
   cd ego4d-goalstep
   ```

2. Install dependencies:  
   ```bash
   pip install -r requirements.txt
   ```

3. Train the model:  
   ```bash
   python train.py --config configs/vslnet.yaml
   ```

4. Evaluate:  
   ```bash
   python evaluate.py --checkpoint <model_checkpoint>
   ```

## **Acknowledgments**

This project was conducted for the *NYU DS-GA-1011 NLP with Representation Learning* course. We acknowledge the contributions of the course instructors and the Ego4D dataset team.
