package com.dqd.three.pojo;

import java.util.ArrayList;
import java.util.List;

public class ClubExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ClubExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andNameIsNull() {
            addCriterion("name is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("name is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("name =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("name <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("name >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("name >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("name <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("name <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("name like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("name not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("name in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("name not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("name between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("name not between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andWinIsNull() {
            addCriterion("win is null");
            return (Criteria) this;
        }

        public Criteria andWinIsNotNull() {
            addCriterion("win is not null");
            return (Criteria) this;
        }

        public Criteria andWinEqualTo(Integer value) {
            addCriterion("win =", value, "win");
            return (Criteria) this;
        }

        public Criteria andWinNotEqualTo(Integer value) {
            addCriterion("win <>", value, "win");
            return (Criteria) this;
        }

        public Criteria andWinGreaterThan(Integer value) {
            addCriterion("win >", value, "win");
            return (Criteria) this;
        }

        public Criteria andWinGreaterThanOrEqualTo(Integer value) {
            addCriterion("win >=", value, "win");
            return (Criteria) this;
        }

        public Criteria andWinLessThan(Integer value) {
            addCriterion("win <", value, "win");
            return (Criteria) this;
        }

        public Criteria andWinLessThanOrEqualTo(Integer value) {
            addCriterion("win <=", value, "win");
            return (Criteria) this;
        }

        public Criteria andWinIn(List<Integer> values) {
            addCriterion("win in", values, "win");
            return (Criteria) this;
        }

        public Criteria andWinNotIn(List<Integer> values) {
            addCriterion("win not in", values, "win");
            return (Criteria) this;
        }

        public Criteria andWinBetween(Integer value1, Integer value2) {
            addCriterion("win between", value1, value2, "win");
            return (Criteria) this;
        }

        public Criteria andWinNotBetween(Integer value1, Integer value2) {
            addCriterion("win not between", value1, value2, "win");
            return (Criteria) this;
        }

        public Criteria andLoseIsNull() {
            addCriterion("lose is null");
            return (Criteria) this;
        }

        public Criteria andLoseIsNotNull() {
            addCriterion("lose is not null");
            return (Criteria) this;
        }

        public Criteria andLoseEqualTo(Integer value) {
            addCriterion("lose =", value, "lose");
            return (Criteria) this;
        }

        public Criteria andLoseNotEqualTo(Integer value) {
            addCriterion("lose <>", value, "lose");
            return (Criteria) this;
        }

        public Criteria andLoseGreaterThan(Integer value) {
            addCriterion("lose >", value, "lose");
            return (Criteria) this;
        }

        public Criteria andLoseGreaterThanOrEqualTo(Integer value) {
            addCriterion("lose >=", value, "lose");
            return (Criteria) this;
        }

        public Criteria andLoseLessThan(Integer value) {
            addCriterion("lose <", value, "lose");
            return (Criteria) this;
        }

        public Criteria andLoseLessThanOrEqualTo(Integer value) {
            addCriterion("lose <=", value, "lose");
            return (Criteria) this;
        }

        public Criteria andLoseIn(List<Integer> values) {
            addCriterion("lose in", values, "lose");
            return (Criteria) this;
        }

        public Criteria andLoseNotIn(List<Integer> values) {
            addCriterion("lose not in", values, "lose");
            return (Criteria) this;
        }

        public Criteria andLoseBetween(Integer value1, Integer value2) {
            addCriterion("lose between", value1, value2, "lose");
            return (Criteria) this;
        }

        public Criteria andLoseNotBetween(Integer value1, Integer value2) {
            addCriterion("lose not between", value1, value2, "lose");
            return (Criteria) this;
        }

        public Criteria andDrawIsNull() {
            addCriterion("draw is null");
            return (Criteria) this;
        }

        public Criteria andDrawIsNotNull() {
            addCriterion("draw is not null");
            return (Criteria) this;
        }

        public Criteria andDrawEqualTo(Integer value) {
            addCriterion("draw =", value, "draw");
            return (Criteria) this;
        }

        public Criteria andDrawNotEqualTo(Integer value) {
            addCriterion("draw <>", value, "draw");
            return (Criteria) this;
        }

        public Criteria andDrawGreaterThan(Integer value) {
            addCriterion("draw >", value, "draw");
            return (Criteria) this;
        }

        public Criteria andDrawGreaterThanOrEqualTo(Integer value) {
            addCriterion("draw >=", value, "draw");
            return (Criteria) this;
        }

        public Criteria andDrawLessThan(Integer value) {
            addCriterion("draw <", value, "draw");
            return (Criteria) this;
        }

        public Criteria andDrawLessThanOrEqualTo(Integer value) {
            addCriterion("draw <=", value, "draw");
            return (Criteria) this;
        }

        public Criteria andDrawIn(List<Integer> values) {
            addCriterion("draw in", values, "draw");
            return (Criteria) this;
        }

        public Criteria andDrawNotIn(List<Integer> values) {
            addCriterion("draw not in", values, "draw");
            return (Criteria) this;
        }

        public Criteria andDrawBetween(Integer value1, Integer value2) {
            addCriterion("draw between", value1, value2, "draw");
            return (Criteria) this;
        }

        public Criteria andDrawNotBetween(Integer value1, Integer value2) {
            addCriterion("draw not between", value1, value2, "draw");
            return (Criteria) this;
        }

        public Criteria andCountryIsNull() {
            addCriterion("country is null");
            return (Criteria) this;
        }

        public Criteria andCountryIsNotNull() {
            addCriterion("country is not null");
            return (Criteria) this;
        }

        public Criteria andCountryEqualTo(String value) {
            addCriterion("country =", value, "country");
            return (Criteria) this;
        }

        public Criteria andCountryNotEqualTo(String value) {
            addCriterion("country <>", value, "country");
            return (Criteria) this;
        }

        public Criteria andCountryGreaterThan(String value) {
            addCriterion("country >", value, "country");
            return (Criteria) this;
        }

        public Criteria andCountryGreaterThanOrEqualTo(String value) {
            addCriterion("country >=", value, "country");
            return (Criteria) this;
        }

        public Criteria andCountryLessThan(String value) {
            addCriterion("country <", value, "country");
            return (Criteria) this;
        }

        public Criteria andCountryLessThanOrEqualTo(String value) {
            addCriterion("country <=", value, "country");
            return (Criteria) this;
        }

        public Criteria andCountryLike(String value) {
            addCriterion("country like", value, "country");
            return (Criteria) this;
        }

        public Criteria andCountryNotLike(String value) {
            addCriterion("country not like", value, "country");
            return (Criteria) this;
        }

        public Criteria andCountryIn(List<String> values) {
            addCriterion("country in", values, "country");
            return (Criteria) this;
        }

        public Criteria andCountryNotIn(List<String> values) {
            addCriterion("country not in", values, "country");
            return (Criteria) this;
        }

        public Criteria andCountryBetween(String value1, String value2) {
            addCriterion("country between", value1, value2, "country");
            return (Criteria) this;
        }

        public Criteria andCountryNotBetween(String value1, String value2) {
            addCriterion("country not between", value1, value2, "country");
            return (Criteria) this;
        }

        public Criteria andScoresIsNull() {
            addCriterion("scores is null");
            return (Criteria) this;
        }

        public Criteria andScoresIsNotNull() {
            addCriterion("scores is not null");
            return (Criteria) this;
        }

        public Criteria andScoresEqualTo(Integer value) {
            addCriterion("scores =", value, "scores");
            return (Criteria) this;
        }

        public Criteria andScoresNotEqualTo(Integer value) {
            addCriterion("scores <>", value, "scores");
            return (Criteria) this;
        }

        public Criteria andScoresGreaterThan(Integer value) {
            addCriterion("scores >", value, "scores");
            return (Criteria) this;
        }

        public Criteria andScoresGreaterThanOrEqualTo(Integer value) {
            addCriterion("scores >=", value, "scores");
            return (Criteria) this;
        }

        public Criteria andScoresLessThan(Integer value) {
            addCriterion("scores <", value, "scores");
            return (Criteria) this;
        }

        public Criteria andScoresLessThanOrEqualTo(Integer value) {
            addCriterion("scores <=", value, "scores");
            return (Criteria) this;
        }

        public Criteria andScoresIn(List<Integer> values) {
            addCriterion("scores in", values, "scores");
            return (Criteria) this;
        }

        public Criteria andScoresNotIn(List<Integer> values) {
            addCriterion("scores not in", values, "scores");
            return (Criteria) this;
        }

        public Criteria andScoresBetween(Integer value1, Integer value2) {
            addCriterion("scores between", value1, value2, "scores");
            return (Criteria) this;
        }

        public Criteria andScoresNotBetween(Integer value1, Integer value2) {
            addCriterion("scores not between", value1, value2, "scores");
            return (Criteria) this;
        }

        public Criteria andGoalsIsNull() {
            addCriterion("goals is null");
            return (Criteria) this;
        }

        public Criteria andGoalsIsNotNull() {
            addCriterion("goals is not null");
            return (Criteria) this;
        }

        public Criteria andGoalsEqualTo(Integer value) {
            addCriterion("goals =", value, "goals");
            return (Criteria) this;
        }

        public Criteria andGoalsNotEqualTo(Integer value) {
            addCriterion("goals <>", value, "goals");
            return (Criteria) this;
        }

        public Criteria andGoalsGreaterThan(Integer value) {
            addCriterion("goals >", value, "goals");
            return (Criteria) this;
        }

        public Criteria andGoalsGreaterThanOrEqualTo(Integer value) {
            addCriterion("goals >=", value, "goals");
            return (Criteria) this;
        }

        public Criteria andGoalsLessThan(Integer value) {
            addCriterion("goals <", value, "goals");
            return (Criteria) this;
        }

        public Criteria andGoalsLessThanOrEqualTo(Integer value) {
            addCriterion("goals <=", value, "goals");
            return (Criteria) this;
        }

        public Criteria andGoalsIn(List<Integer> values) {
            addCriterion("goals in", values, "goals");
            return (Criteria) this;
        }

        public Criteria andGoalsNotIn(List<Integer> values) {
            addCriterion("goals not in", values, "goals");
            return (Criteria) this;
        }

        public Criteria andGoalsBetween(Integer value1, Integer value2) {
            addCriterion("goals between", value1, value2, "goals");
            return (Criteria) this;
        }

        public Criteria andGoalsNotBetween(Integer value1, Integer value2) {
            addCriterion("goals not between", value1, value2, "goals");
            return (Criteria) this;
        }

        public Criteria andLostIsNull() {
            addCriterion("lost is null");
            return (Criteria) this;
        }

        public Criteria andLostIsNotNull() {
            addCriterion("lost is not null");
            return (Criteria) this;
        }

        public Criteria andLostEqualTo(Integer value) {
            addCriterion("lost =", value, "lost");
            return (Criteria) this;
        }

        public Criteria andLostNotEqualTo(Integer value) {
            addCriterion("lost <>", value, "lost");
            return (Criteria) this;
        }

        public Criteria andLostGreaterThan(Integer value) {
            addCriterion("lost >", value, "lost");
            return (Criteria) this;
        }

        public Criteria andLostGreaterThanOrEqualTo(Integer value) {
            addCriterion("lost >=", value, "lost");
            return (Criteria) this;
        }

        public Criteria andLostLessThan(Integer value) {
            addCriterion("lost <", value, "lost");
            return (Criteria) this;
        }

        public Criteria andLostLessThanOrEqualTo(Integer value) {
            addCriterion("lost <=", value, "lost");
            return (Criteria) this;
        }

        public Criteria andLostIn(List<Integer> values) {
            addCriterion("lost in", values, "lost");
            return (Criteria) this;
        }

        public Criteria andLostNotIn(List<Integer> values) {
            addCriterion("lost not in", values, "lost");
            return (Criteria) this;
        }

        public Criteria andLostBetween(Integer value1, Integer value2) {
            addCriterion("lost between", value1, value2, "lost");
            return (Criteria) this;
        }

        public Criteria andLostNotBetween(Integer value1, Integer value2) {
            addCriterion("lost not between", value1, value2, "lost");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}