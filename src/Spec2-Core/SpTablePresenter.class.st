"
A TablePresenter is a spec presenter for a table.
See AbstractWidgetPresenter

self example

"
Class {
	#name : #SpTablePresenter,
	#superclass : #SpAbstractListPresenter,
	#instVars : [
		'#columns => SpObservableSlot',
		'#showColumnHeaders => SpObservableSlot',
		'#isResizableHolder'
	],
	#category : #'Spec2-Core-Widgets-Table'
}

{ #category : #specs }
SpTablePresenter class >> adapterName [

	^ #TableAdapter
]

{ #category : #api }
SpTablePresenter >> addColumn: aColumn [

	columns := columns copyWith: aColumn
]

{ #category : #api }
SpTablePresenter >> addColumns: aCollection [

	aCollection do: [ :each | self addColumn: each ]
]

{ #category : #api }
SpTablePresenter >> beNotResizable [
	self isResizable: false
]

{ #category : #api }
SpTablePresenter >> beResizable [
	self isResizable: true
]

{ #category : #accessing }
SpTablePresenter >> columns [

	^ columns
]

{ #category : #api }
SpTablePresenter >> columns: aCollection [

	columns := aCollection
]

{ #category : #api }
SpTablePresenter >> hideColumnHeaders [

	showColumnHeaders := false
]

{ #category : #initialization }
SpTablePresenter >> initialize [ 

	super initialize.
	showColumnHeaders := true.
	columns := #().
	isResizableHolder := false asValueHolder
]

{ #category : #accessing }
SpTablePresenter >> isResizable [
	^ isResizableHolder value
]

{ #category : #accessing }
SpTablePresenter >> isResizable: aBoolean [
	isResizableHolder value: aBoolean
]

{ #category : #testing }
SpTablePresenter >> isShowingColumnHeaders [

	^ showColumnHeaders
]

{ #category : #api }
SpTablePresenter >> showColumnHeaders [

	showColumnHeaders := true
]

{ #category : #'api-events' }
SpTablePresenter >> whenColumnsChangedDo: aBlock [
	
	self property: #columns whenChangedDo: aBlock
]

{ #category : #'api-events' }
SpTablePresenter >> whenIsResizableChangedDo: aBlock [
	isResizableHolder whenChangedDo: aBlock
]

{ #category : #'api-events' }
SpTablePresenter >> whenShowColumnHeadersChangedDo: aBlock [
	
	self property: #showColumnHeaders whenChangedDo: aBlock
]