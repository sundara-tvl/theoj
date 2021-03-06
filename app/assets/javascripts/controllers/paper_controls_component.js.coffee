
Theoj.PaperControlsComponent = Ember.Component.extend
  user: null
  paper: null
  newReviewer: null
  paperIsPending:  Ember.computed.equal('paper.state', 'pending')
  paperIsUnderReview:  Ember.computed.equal('paper.state', 'under_review')
  paperIsAccepted:  Ember.computed.equal('paper.state', 'accepted')
  showReviewerInfo: Ember.computed.or("user.editor", "user.admin")


  #These should probably just trigger app level events which take care of the actual action but in here just now
  actions :
    assignReviewer: ->
      @paper.assignReviewer @newReviewer

    removeReviewer: (reviewer)->
      console.log reviewer
      @paper.removeReviewer reviewer.sha
