package com.dqd.three.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MatchExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public MatchExample() {
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

        public Criteria andHomeNameIsNull() {
            addCriterion("home_name is null");
            return (Criteria) this;
        }

        public Criteria andHomeNameIsNotNull() {
            addCriterion("home_name is not null");
            return (Criteria) this;
        }

        public Criteria andHomeNameEqualTo(String value) {
            addCriterion("home_name =", value, "homeName");
            return (Criteria) this;
        }

        public Criteria andHomeNameNotEqualTo(String value) {
            addCriterion("home_name <>", value, "homeName");
            return (Criteria) this;
        }

        public Criteria andHomeNameGreaterThan(String value) {
            addCriterion("home_name >", value, "homeName");
            return (Criteria) this;
        }

        public Criteria andHomeNameGreaterThanOrEqualTo(String value) {
            addCriterion("home_name >=", value, "homeName");
            return (Criteria) this;
        }

        public Criteria andHomeNameLessThan(String value) {
            addCriterion("home_name <", value, "homeName");
            return (Criteria) this;
        }

        public Criteria andHomeNameLessThanOrEqualTo(String value) {
            addCriterion("home_name <=", value, "homeName");
            return (Criteria) this;
        }

        public Criteria andHomeNameLike(String value) {
            addCriterion("home_name like", value, "homeName");
            return (Criteria) this;
        }

        public Criteria andHomeNameNotLike(String value) {
            addCriterion("home_name not like", value, "homeName");
            return (Criteria) this;
        }

        public Criteria andHomeNameIn(List<String> values) {
            addCriterion("home_name in", values, "homeName");
            return (Criteria) this;
        }

        public Criteria andHomeNameNotIn(List<String> values) {
            addCriterion("home_name not in", values, "homeName");
            return (Criteria) this;
        }

        public Criteria andHomeNameBetween(String value1, String value2) {
            addCriterion("home_name between", value1, value2, "homeName");
            return (Criteria) this;
        }

        public Criteria andHomeNameNotBetween(String value1, String value2) {
            addCriterion("home_name not between", value1, value2, "homeName");
            return (Criteria) this;
        }

        public Criteria andVisitedNameIsNull() {
            addCriterion("visited_name is null");
            return (Criteria) this;
        }

        public Criteria andVisitedNameIsNotNull() {
            addCriterion("visited_name is not null");
            return (Criteria) this;
        }

        public Criteria andVisitedNameEqualTo(String value) {
            addCriterion("visited_name =", value, "visitedName");
            return (Criteria) this;
        }

        public Criteria andVisitedNameNotEqualTo(String value) {
            addCriterion("visited_name <>", value, "visitedName");
            return (Criteria) this;
        }

        public Criteria andVisitedNameGreaterThan(String value) {
            addCriterion("visited_name >", value, "visitedName");
            return (Criteria) this;
        }

        public Criteria andVisitedNameGreaterThanOrEqualTo(String value) {
            addCriterion("visited_name >=", value, "visitedName");
            return (Criteria) this;
        }

        public Criteria andVisitedNameLessThan(String value) {
            addCriterion("visited_name <", value, "visitedName");
            return (Criteria) this;
        }

        public Criteria andVisitedNameLessThanOrEqualTo(String value) {
            addCriterion("visited_name <=", value, "visitedName");
            return (Criteria) this;
        }

        public Criteria andVisitedNameLike(String value) {
            addCriterion("visited_name like", value, "visitedName");
            return (Criteria) this;
        }

        public Criteria andVisitedNameNotLike(String value) {
            addCriterion("visited_name not like", value, "visitedName");
            return (Criteria) this;
        }

        public Criteria andVisitedNameIn(List<String> values) {
            addCriterion("visited_name in", values, "visitedName");
            return (Criteria) this;
        }

        public Criteria andVisitedNameNotIn(List<String> values) {
            addCriterion("visited_name not in", values, "visitedName");
            return (Criteria) this;
        }

        public Criteria andVisitedNameBetween(String value1, String value2) {
            addCriterion("visited_name between", value1, value2, "visitedName");
            return (Criteria) this;
        }

        public Criteria andVisitedNameNotBetween(String value1, String value2) {
            addCriterion("visited_name not between", value1, value2, "visitedName");
            return (Criteria) this;
        }

        public Criteria andStartTimeIsNull() {
            addCriterion("start_time is null");
            return (Criteria) this;
        }

        public Criteria andStartTimeIsNotNull() {
            addCriterion("start_time is not null");
            return (Criteria) this;
        }

        public Criteria andStartTimeEqualTo(Date value) {
            addCriterion("start_time =", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeNotEqualTo(Date value) {
            addCriterion("start_time <>", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeGreaterThan(Date value) {
            addCriterion("start_time >", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("start_time >=", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeLessThan(Date value) {
            addCriterion("start_time <", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeLessThanOrEqualTo(Date value) {
            addCriterion("start_time <=", value, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeIn(List<Date> values) {
            addCriterion("start_time in", values, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeNotIn(List<Date> values) {
            addCriterion("start_time not in", values, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeBetween(Date value1, Date value2) {
            addCriterion("start_time between", value1, value2, "startTime");
            return (Criteria) this;
        }

        public Criteria andStartTimeNotBetween(Date value1, Date value2) {
            addCriterion("start_time not between", value1, value2, "startTime");
            return (Criteria) this;
        }

        public Criteria andHomeScoreIsNull() {
            addCriterion("home_score is null");
            return (Criteria) this;
        }

        public Criteria andHomeScoreIsNotNull() {
            addCriterion("home_score is not null");
            return (Criteria) this;
        }

        public Criteria andHomeScoreEqualTo(Integer value) {
            addCriterion("home_score =", value, "homeScore");
            return (Criteria) this;
        }

        public Criteria andHomeScoreNotEqualTo(Integer value) {
            addCriterion("home_score <>", value, "homeScore");
            return (Criteria) this;
        }

        public Criteria andHomeScoreGreaterThan(Integer value) {
            addCriterion("home_score >", value, "homeScore");
            return (Criteria) this;
        }

        public Criteria andHomeScoreGreaterThanOrEqualTo(Integer value) {
            addCriterion("home_score >=", value, "homeScore");
            return (Criteria) this;
        }

        public Criteria andHomeScoreLessThan(Integer value) {
            addCriterion("home_score <", value, "homeScore");
            return (Criteria) this;
        }

        public Criteria andHomeScoreLessThanOrEqualTo(Integer value) {
            addCriterion("home_score <=", value, "homeScore");
            return (Criteria) this;
        }

        public Criteria andHomeScoreIn(List<Integer> values) {
            addCriterion("home_score in", values, "homeScore");
            return (Criteria) this;
        }

        public Criteria andHomeScoreNotIn(List<Integer> values) {
            addCriterion("home_score not in", values, "homeScore");
            return (Criteria) this;
        }

        public Criteria andHomeScoreBetween(Integer value1, Integer value2) {
            addCriterion("home_score between", value1, value2, "homeScore");
            return (Criteria) this;
        }

        public Criteria andHomeScoreNotBetween(Integer value1, Integer value2) {
            addCriterion("home_score not between", value1, value2, "homeScore");
            return (Criteria) this;
        }

        public Criteria andVisitedScoreIsNull() {
            addCriterion("visited_score is null");
            return (Criteria) this;
        }

        public Criteria andVisitedScoreIsNotNull() {
            addCriterion("visited_score is not null");
            return (Criteria) this;
        }

        public Criteria andVisitedScoreEqualTo(Integer value) {
            addCriterion("visited_score =", value, "visitedScore");
            return (Criteria) this;
        }

        public Criteria andVisitedScoreNotEqualTo(Integer value) {
            addCriterion("visited_score <>", value, "visitedScore");
            return (Criteria) this;
        }

        public Criteria andVisitedScoreGreaterThan(Integer value) {
            addCriterion("visited_score >", value, "visitedScore");
            return (Criteria) this;
        }

        public Criteria andVisitedScoreGreaterThanOrEqualTo(Integer value) {
            addCriterion("visited_score >=", value, "visitedScore");
            return (Criteria) this;
        }

        public Criteria andVisitedScoreLessThan(Integer value) {
            addCriterion("visited_score <", value, "visitedScore");
            return (Criteria) this;
        }

        public Criteria andVisitedScoreLessThanOrEqualTo(Integer value) {
            addCriterion("visited_score <=", value, "visitedScore");
            return (Criteria) this;
        }

        public Criteria andVisitedScoreIn(List<Integer> values) {
            addCriterion("visited_score in", values, "visitedScore");
            return (Criteria) this;
        }

        public Criteria andVisitedScoreNotIn(List<Integer> values) {
            addCriterion("visited_score not in", values, "visitedScore");
            return (Criteria) this;
        }

        public Criteria andVisitedScoreBetween(Integer value1, Integer value2) {
            addCriterion("visited_score between", value1, value2, "visitedScore");
            return (Criteria) this;
        }

        public Criteria andVisitedScoreNotBetween(Integer value1, Integer value2) {
            addCriterion("visited_score not between", value1, value2, "visitedScore");
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

        public Criteria andRoundIsNull() {
            addCriterion("round is null");
            return (Criteria) this;
        }

        public Criteria andRoundIsNotNull() {
            addCriterion("round is not null");
            return (Criteria) this;
        }

        public Criteria andRoundEqualTo(Integer value) {
            addCriterion("round =", value, "round");
            return (Criteria) this;
        }

        public Criteria andRoundNotEqualTo(Integer value) {
            addCriterion("round <>", value, "round");
            return (Criteria) this;
        }

        public Criteria andRoundGreaterThan(Integer value) {
            addCriterion("round >", value, "round");
            return (Criteria) this;
        }

        public Criteria andRoundGreaterThanOrEqualTo(Integer value) {
            addCriterion("round >=", value, "round");
            return (Criteria) this;
        }

        public Criteria andRoundLessThan(Integer value) {
            addCriterion("round <", value, "round");
            return (Criteria) this;
        }

        public Criteria andRoundLessThanOrEqualTo(Integer value) {
            addCriterion("round <=", value, "round");
            return (Criteria) this;
        }

        public Criteria andRoundIn(List<Integer> values) {
            addCriterion("round in", values, "round");
            return (Criteria) this;
        }

        public Criteria andRoundNotIn(List<Integer> values) {
            addCriterion("round not in", values, "round");
            return (Criteria) this;
        }

        public Criteria andRoundBetween(Integer value1, Integer value2) {
            addCriterion("round between", value1, value2, "round");
            return (Criteria) this;
        }

        public Criteria andRoundNotBetween(Integer value1, Integer value2) {
            addCriterion("round not between", value1, value2, "round");
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