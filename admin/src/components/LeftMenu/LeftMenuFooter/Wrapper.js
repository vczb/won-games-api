import styled, { css } from 'styled-components';

const Wrapper = styled.div`
  ${({theme}) => css`
    position: absolute;
    width: 100%;
    background: ${theme.main.colors.won.blue};
    bottom: 0;
    text-align:center;
    padding: .5rem 0;
      span{
        margin-right: 1rem;
        color: ${theme.main.colors.white};
      }
      a{
        color: ${theme.main.colors.won.orange};
        text-decoration: none;
        font-size: 1.7rem;
      }
    }
  `}
`;

export default Wrapper;
