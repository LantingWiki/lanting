

Object.defineProperty(exports, "__esModule", {
  value: true
});

const _createClass = function () { function defineProperties(target, props) { for (let i = 0; i < props.length; i++) { const descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

const _react = require("react");

const _react2 = _interopRequireDefault(_react);

const _propTypes = require("prop-types");

const _propTypes2 = _interopRequireDefault(_propTypes);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError("this hasn't been initialised - super() hasn't been called"); } return call && (typeof call === "object" || typeof call === "function") ? call : self; }

function _inherits(subClass, superClass) { if (typeof superClass !== "function" && superClass !== null) { throw new TypeError(`Super expression must either be null or a function, not ${  typeof superClass}`); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }

const propTypes = {
  // the height of data preview
  previewHeight: _propTypes2.default.string.isRequired,
  // any children you pass in
  children: _propTypes2.default.node.isRequired,
  // a custom class name
  className: _propTypes2.default.string,
  // a flag to set default state of data
  expanded: _propTypes2.default.bool,
  // the text to show for expand
  expandText: _propTypes2.default.node,
  // the text to show for collapse
  collapseText: _propTypes2.default.node,
  // option to set if expanded data can be collapsed
  collapse: _propTypes2.default.bool,
  // a flag to set ellipsis
  ellipsis: _propTypes2.default.bool,
  // custom text to show before expand text
  ellipsisText: _propTypes2.default.string,
  // called whenever the user clicks expand button
  onExpandClick: _propTypes2.default.func,
  // called whenever the user clicks collapse button
  onCollapseClick: _propTypes2.default.func,
  // called whenever the user clicks expand and collapse button
  onClick: _propTypes2.default.func
};

const defaultProps = {
  className: "",
  expanded: false,
  expandText: "Expand",
  collapseText: "Collapse",
  collapse: true,
  ellipsis: true,
  ellipsisText: "...",
  onExpandClick: null,
  onCollapseClick: null,
  onClick: null
};

const ExpandCollapse = function (_React$Component) {
  _inherits(ExpandCollapse, _React$Component);

  function ExpandCollapse(props) {
    _classCallCheck(this, ExpandCollapse);

    const _this = _possibleConstructorReturn(this, (ExpandCollapse.__proto__ || Object.getPrototypeOf(ExpandCollapse)).call(this, props));

    _this.state = {
      expanded: _this.props.expanded,
      shouldExpand: true
    };

    _this.handleClick = _this.handleClick.bind(_this);
    _this.shouldDataExpand = _this.shouldDataExpand.bind(_this);
    _this.getContentHeight = _this.getContentHeight.bind(_this);
    _this.getButton = _this.getButton.bind(_this);
    _this.getButtonText = _this.getButtonText.bind(_this);
    _this.getClassName = _this.getClassName.bind(_this);
    _this.setScrollPosition = _this.setScrollPosition.bind(_this);
    _this.setRef = _this.setRef.bind(_this);
    return _this;
  }

  _createClass(ExpandCollapse, [{
    key: "componentDidMount",
    value: function componentDidMount() {
      this.shouldDataExpand();
    }
  }, {
    key: "handleClick",
    value: function handleClick(event) {
      this.setState({
        expanded: !this.state.expanded
      }, function () {
        const {expanded} = this.state;
        const _props = this.props;
            const {onExpandClick} = _props;
            const {onCollapseClick} = _props;
            const {onClick} = _props;


        if (onExpandClick) {
          if (expanded) {
            onExpandClick(event);
          }
        }

        if (onCollapseClick) {
          if (!expanded) {
            onCollapseClick(event);
          }
        }

        if (onClick) {
          onClick(event);
        }

        this.setScrollPosition();
      });
    }
  }, {
    key: "setScrollPosition",
    value: function setScrollPosition() {
      const {expanded} = this.state;


      if (!expanded) {
        const contentRect = this.toggleContent.getBoundingClientRect();
        if (contentRect.top < 0) {
          const offsetTop = Math.abs(contentRect.top + (window.pageYOffset || document.documentElement.scrollTop));

          window.scrollTo(0, offsetTop);
        }
      }
    }
  }, {
    key: "shouldDataExpand",
    value: function shouldDataExpand() {
      const {expanded} = this.state;


      const contentRect = this.toggleContent.getBoundingClientRect();
      const contentBodyRect = this.toggleContent.querySelector(".react-expand-collapse__body").getBoundingClientRect();

      if (contentRect.height > contentBodyRect.height && !expanded) {
        this.setState({
          shouldExpand: false
        });
      }
    }
  }, {
    key: "getContentHeight",
    value: function getContentHeight() {
      const _state = this.state;
          const {expanded} = _state;
          const {shouldExpand} = _state;
      const {previewHeight} = this.props;


      if (expanded || !shouldExpand) {
        return "auto";
      }

      return previewHeight;
    }
  }, {
    key: "getButton",
    value: function getButton() {
      const _state2 = this.state;
          const {expanded} = _state2;
          const {shouldExpand} = _state2;
      const {collapse} = this.props;


      if (shouldExpand) {
        if (!collapse && expanded) {
          return "";
        }

        const buttonText = this.getButtonText();

        return _react2.default.createElement(
          "span",
          {
            className: "react-expand-collapse__button",
            onClick: this.handleClick,
            "aria-label": buttonText,
            "aria-expanded": expanded,
            role: "button"
          },
          buttonText
        );
      }

      return "";
    }
  }, {
    key: "getButtonText",
    value: function getButtonText() {
      const {expanded} = this.state;
      const _props2 = this.props;
          const {expandText} = _props2;
          const {collapseText} = _props2;
          const {ellipsis} = _props2;
          const {ellipsisText} = _props2;


      let text = expanded ? collapseText : expandText;

      if (ellipsis) {
        text = !expanded ? `${  ellipsisText  } ${  text}` : text;
      }

      return text;
    }
  }, {
    key: "getClassName",
    value: function getClassName() {
      const {expanded} = this.state;
      const {className} = this.props;


      const expandedClass = expanded ? "react-expand-collapse--expanded" : "";

      const classes = ["react-expand-collapse__content", expandedClass].concat(className.split(" ")).join(" ");

      return classes;
    }
  }, {
    key: "setRef",
    value: function setRef(ref) {
      this.toggleContent = ref;
    }
  }, {
    key: "render",
    value: function render() {
      const className = this.getClassName();
      const contentHeight = this.getContentHeight();
      const button = this.getButton();

      return _react2.default.createElement(
        "div",
        {
          className,
          ref: this.setRef,
          style: { height: contentHeight }
        },
        _react2.default.createElement(
          "div",
          { className: "react-expand-collapse__body" },
          this.props.children
        ),
        button
      );
    }
  }]);

  return ExpandCollapse;
}(_react2.default.Component);

ExpandCollapse.propTypes = propTypes;
ExpandCollapse.defaultProps = defaultProps;

exports.default = ExpandCollapse;