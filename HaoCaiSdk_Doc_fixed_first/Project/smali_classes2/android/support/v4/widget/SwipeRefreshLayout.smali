.class public Landroid/support/v4/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingParent;
.implements Landroid/support/v4/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;,
        Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final ALPHA_ANIMATION_DURATION:I = 0x12c

.field private static final ANIMATE_TO_START_DURATION:I = 0xc8

.field private static final ANIMATE_TO_TRIGGER_DURATION:I = 0xc8

.field private static final CIRCLE_BG_LIGHT:I = -0x50506

.field static final CIRCLE_DIAMETER:I = 0x28
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final CIRCLE_DIAMETER_LARGE:I = 0x38
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final DECELERATE_INTERPOLATION_FACTOR:F = 2.0f

.field public static final DEFAULT:I = 0x1

.field private static final DEFAULT_CIRCLE_TARGET:I = 0x40

.field private static final DRAG_RATE:F = 0.5f

.field private static final INVALID_POINTER:I = -0x1

.field public static final LARGE:I = 0x0

.field private static final LAYOUT_ATTRS:[I

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_PROGRESS_ANGLE:F = 0.8f

.field private static final SCALE_DOWN_DURATION:I = 0x96

.field private static final STARTING_PROGRESS_ALPHA:I = 0x4c


# instance fields
.field private mActivePointerId:I

.field private mAlphaMaxAnimation:Landroid/view/animation/Animation;

.field private mAlphaStartAnimation:Landroid/view/animation/Animation;

.field private final mAnimateToCorrectPosition:Landroid/view/animation/Animation;

.field private final mAnimateToStartPosition:Landroid/view/animation/Animation;

.field private mChildScrollUpCallback:Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

.field private mCircleDiameter:I

.field mCircleView:Landroid/support/v4/widget/CircleImageView;

.field private mCircleViewIndex:I

.field mCurrentTargetOffsetTop:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mFrom:I

.field private mInitialDownY:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

.field private mMediumAnimationDuration:I

.field private mNestedScrollInProgress:Z

.field private final mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private final mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field mNotify:Z

.field protected mOriginalOffsetTop:I

.field private final mParentOffsetInWindow:[I

.field private final mParentScrollConsumed:[I

.field mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

.field private mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

.field mRefreshing:Z

.field private mReturningToStart:Z

.field mScale:Z

.field private mScaleAnimation:Landroid/view/animation/Animation;

.field private mScaleDownAnimation:Landroid/view/animation/Animation;

.field private mScaleDownToStartAnimation:Landroid/view/animation/Animation;

.field mSpinnerOffsetEnd:I

.field mStartingScale:F

.field private mTarget:Landroid/view/View;

.field private mTotalDragDistance:F

.field private mTotalUnconsumed:F

.field private mTouchSlop:I

.field mUsingCustomStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 84
    const-class v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    .line 140
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 326
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 327
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 336
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 114
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 122
    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mParentScrollConsumed:[I

    .line 123
    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    .line 132
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 145
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 176
    new-instance v1, Landroid/support/v4/widget/SwipeRefreshLayout$1;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$1;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1105
    new-instance v1, Landroid/support/v4/widget/SwipeRefreshLayout$6;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$6;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    .line 1129
    new-instance v1, Landroid/support/v4/widget/SwipeRefreshLayout$7;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$7;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 338
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    .line 340
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    .line 343
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setWillNotDraw(Z)V

    .line 344
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 346
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 347
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42200000    # 40.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    .line 349
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->createProgressView()V

    .line 350
    const/4 v2, 0x1

    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V

    .line 352
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42800000    # 64.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 353
    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    int-to-float v3, v3

    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 354
    new-instance v3, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {v3, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 356
    new-instance v3, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v3, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 357
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    .line 359
    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    neg-int v3, v3

    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 360
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->moveToStart(F)V

    .line 362
    sget-object v3, Landroid/support/v4/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 363
    .local v3, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 364
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 365
    return-void
.end method

.method private animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .line 1077
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    .line 1078
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 1079
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1080
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1081
    if-eqz p2, :cond_0

    .line 1082
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1084
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 1085
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1086
    return-void
.end method

.method private animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .line 1089
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_0

    .line 1091
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 1093
    :cond_0
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    .line 1094
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 1095
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1096
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1097
    if-eqz p2, :cond_1

    .line 1098
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1100
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 1101
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1103
    :goto_0
    return-void
.end method

.method private createProgressView()V
    .locals 3

    .line 384
    new-instance v0, Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, -0x50506

    invoke-direct {v0, v1, v2}, Landroid/support/v4/widget/CircleImageView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    .line 385
    new-instance v0, Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    .line 386
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable;->setStyle(I)V

    .line 387
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 388
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->addView(Landroid/view/View;)V

    .line 390
    return-void
.end method

.method private ensureTarget()V
    .locals 3

    .line 578
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v0, :cond_1

    .line 579
    const/4 v0, 0x0

    .line 579
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 580
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 581
    .local v1, "child":Landroid/view/View;
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 582
    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 583
    goto :goto_1

    .line 579
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 587
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method private finishSpinner(F)V
    .locals 3
    .param p1, "overscrollTop"    # F

    .line 956
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 957
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    goto :goto_0

    .line 960
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 961
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/support/v4/widget/CircularProgressDrawable;->setStartEndTrim(FF)V

    .line 962
    const/4 v1, 0x0

    .line 963
    .local v1, "listener":Landroid/view/animation/Animation$AnimationListener;
    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-nez v2, :cond_1

    .line 964
    new-instance v2, Landroid/support/v4/widget/SwipeRefreshLayout$5;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$5;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    move-object v1, v2

    .line 983
    :cond_1
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    invoke-direct {p0, v2, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 984
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/CircularProgressDrawable;->setArrowEnabled(Z)V

    .line 986
    .end local v1    # "listener":Landroid/view/animation/Animation$AnimationListener;
    :goto_0
    return-void
.end method

.method private isAnimationRunning(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 903
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private moveSpinner(F)V
    .locals 16
    .param p1, "overscrollTop"    # F

    move-object/from16 v0, p0

    .line 907
    iget-object v1, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CircularProgressDrawable;->setArrowEnabled(Z)V

    .line 908
    iget v1, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    div-float v1, p1, v1

    .line 910
    .local v1, "originalDragPercent":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 911
    .local v2, "dragPercent":F
    float-to-double v4, v2

    const-wide v6, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, 0x40a00000    # 5.0f

    mul-float v4, v4, v5

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    .line 912
    .local v4, "adjustedPercent":F
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    sub-float/2addr v5, v6

    .line 913
    .local v5, "extraOS":F
    iget-boolean v6, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v6, :cond_0

    iget v6, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    iget v7, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    sub-int/2addr v6, v7

    :goto_0
    int-to-float v6, v6

    goto :goto_1

    :cond_0
    iget v6, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    goto :goto_0

    .line 915
    .local v6, "slingshotDist":F
    :goto_1
    const/high16 v7, 0x40000000    # 2.0f

    mul-float v8, v6, v7

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    div-float/2addr v8, v6

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 917
    .local v8, "tensionSlingshotPercent":F
    const/high16 v10, 0x40800000    # 4.0f

    div-float v11, v8, v10

    float-to-double v11, v11

    div-float v10, v8, v10

    float-to-double v13, v10

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    sub-double/2addr v11, v9

    double-to-float v9, v11

    mul-float v9, v9, v7

    .line 919
    .local v9, "tensionPercent":F
    mul-float v10, v6, v9

    mul-float v10, v10, v7

    .line 921
    .local v10, "extraMove":F
    iget v11, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    mul-float v12, v6, v2

    add-float/2addr v12, v10

    float-to-int v12, v12

    add-int/2addr v11, v12

    .line 923
    .local v11, "targetY":I
    iget-object v12, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v12}, Landroid/support/v4/widget/CircleImageView;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_1

    .line 924
    iget-object v12, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 926
    :cond_1
    iget-boolean v12, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-nez v12, :cond_2

    .line 927
    iget-object v12, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v12, v3}, Landroid/support/v4/widget/CircleImageView;->setScaleX(F)V

    .line 928
    iget-object v12, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v12, v3}, Landroid/support/v4/widget/CircleImageView;->setScaleY(F)V

    .line 931
    :cond_2
    iget-boolean v12, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v12, :cond_3

    .line 932
    iget v12, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    div-float v12, p1, v12

    invoke-static {v3, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-virtual {v0, v12}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 934
    :cond_3
    iget v12, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    cmpg-float v12, p1, v12

    if-gez v12, :cond_4

    .line 935
    iget-object v12, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v12}, Landroid/support/v4/widget/CircularProgressDrawable;->getAlpha()I

    move-result v12

    const/16 v13, 0x4c

    if-le v12, v13, :cond_5

    iget-object v12, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    .line 936
    invoke-direct {v0, v12}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 938
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startProgressAlphaStartAnimation()V

    goto :goto_2

    .line 941
    :cond_4
    iget-object v12, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v12}, Landroid/support/v4/widget/CircularProgressDrawable;->getAlpha()I

    move-result v12

    const/16 v13, 0xff

    if-ge v12, v13, :cond_5

    iget-object v12, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    invoke-direct {v0, v12}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 943
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startProgressAlphaMaxAnimation()V

    .line 946
    :cond_5
    :goto_2
    const v12, 0x3f4ccccd    # 0.8f

    mul-float v13, v4, v12

    .line 947
    .local v13, "strokeStart":F
    iget-object v14, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    const/4 v7, 0x0

    invoke-virtual {v14, v7, v12}, Landroid/support/v4/widget/CircularProgressDrawable;->setStartEndTrim(FF)V

    .line 948
    iget-object v7, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v7, v3}, Landroid/support/v4/widget/CircularProgressDrawable;->setArrowScale(F)V

    .line 950
    const/high16 v3, -0x41800000    # -0.25f

    const v7, 0x3ecccccd    # 0.4f

    mul-float v7, v7, v4

    add-float/2addr v7, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v9

    add-float/2addr v7, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v7, v7, v3

    .line 951
    .local v7, "rotation":F
    iget-object v3, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v3, v7}, Landroid/support/v4/widget/CircularProgressDrawable;->setProgressRotation(F)V

    .line 952
    iget v3, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int v3, v11, v3

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 953
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1164
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1165
    .local v1, "pointerId":I
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    .line 1168
    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1169
    .local v2, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 1171
    .end local v2    # "newPointerIndex":I
    :cond_1
    return-void
.end method

.method private setColorViewAlpha(I)V
    .locals 1
    .param p1, "targetAlpha"    # I

    .line 232
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 233
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 234
    return-void
.end method

.method private setRefreshing(ZZ)V
    .locals 2
    .param p1, "refreshing"    # Z
    .param p2, "notify"    # Z

    .line 456
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eq v0, p1, :cond_1

    .line 457
    iput-boolean p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNotify:Z

    .line 458
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 459
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 460
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eqz v0, :cond_0

    .line 461
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 463
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    .line 466
    :cond_1
    :goto_0
    return-void
.end method

.method private startAlphaAnimation(II)Landroid/view/animation/Animation;
    .locals 3
    .param p1, "startingAlpha"    # I
    .param p2, "endingAlpha"    # I

    .line 490
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout$4;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;II)V

    .line 497
    .local v0, "alpha":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 499
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 500
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 501
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 502
    return-object v0
.end method

.method private startDragging(F)V
    .locals 3
    .param p1, "y"    # F

    .line 1068
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialDownY:F

    sub-float v0, p1, v0

    .line 1069
    .local v0, "yDiff":F
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-nez v1, :cond_0

    .line 1070
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialDownY:F

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    .line 1071
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 1072
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    const/16 v2, 0x4c

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 1074
    :cond_0
    return-void
.end method

.method private startProgressAlphaMaxAnimation()V
    .locals 2

    .line 486
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    .line 487
    return-void
.end method

.method private startProgressAlphaStartAnimation()V
    .locals 2

    .line 482
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0x4c

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    .line 483
    return-void
.end method

.method private startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .line 1138
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    .line 1139
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getScaleX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mStartingScale:F

    .line 1140
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$8;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$8;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    .line 1148
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1149
    if-eqz p2, :cond_0

    .line 1150
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1152
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 1153
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1154
    return-void
.end method

.method private startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .line 425
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 426
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 430
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 432
    :cond_0
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$2;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$2;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 438
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 439
    if-eqz p1, :cond_1

    .line 440
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 442
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 443
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 444
    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 2

    .line 663
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mChildScrollUpCallback:Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mChildScrollUpCallback:Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-interface {v0, p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;->canChildScrollUp(Landroid/support/v4/widget/SwipeRefreshLayout;Landroid/view/View;)Z

    move-result v0

    return v0

    .line 666
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ListView;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 667
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-static {v0, v1}, Landroid/support/v4/widget/ListViewCompat;->canScrollList(Landroid/widget/ListView;I)Z

    move-result v0

    return v0

    .line 669
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .line 894
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .line 899
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .line 876
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .line 870
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 369
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    if-gez v0, :cond_0

    .line 370
    return p2

    .line 371
    :cond_0
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_1

    .line 373
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    return v0

    .line 374
    :cond_1
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    if-lt p2, v0, :cond_2

    .line 376
    add-int/lit8 v0, p2, 0x1

    return v0

    .line 379
    :cond_2
    return p2
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 804
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getProgressCircleDiameter()I
    .locals 1

    .line 655
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    return v0
.end method

.method public getProgressViewEndOffset()I
    .locals 1

    .line 277
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    return v0
.end method

.method public getProgressViewStartOffset()I
    .locals 1

    .line 269
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 864
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 849
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isRefreshing()Z
    .locals 1

    .line 572
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    return v0
.end method

.method moveToStart(F)V
    .locals 4
    .param p1, "interpolatedTime"    # F

    .line 1123
    const/4 v0, 0x0

    .line 1124
    .local v0, "targetTop":I
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 1125
    .end local v0    # "targetTop":I
    .local v1, "targetTop":I
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v0

    sub-int v0, v1, v0

    .line 1126
    .local v0, "offset":I
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 1127
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 227
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 228
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->reset()V

    .line 229
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 683
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 685
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 688
    .local v0, "action":I
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 689
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    .line 692
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v1, :cond_6

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-eqz v1, :cond_1

    goto :goto_1

    .line 698
    :cond_1
    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 712
    :pswitch_0
    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    if-ne v3, v1, :cond_2

    .line 713
    sget-object v1, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return v2

    .line 717
    :cond_2
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 718
    .local v1, "pointerIndex":I
    if-gez v1, :cond_3

    .line 719
    return v2

    .line 721
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 722
    .local v2, "y":F
    invoke-direct {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->startDragging(F)V

    .line 723
    goto :goto_0

    .line 731
    .end local v1    # "pointerIndex":I
    .end local v2    # "y":F
    :pswitch_1
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 732
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    goto :goto_0

    .line 700
    :pswitch_2
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v3}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 701
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 702
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 704
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 705
    .restart local v1    # "pointerIndex":I
    if-gez v1, :cond_4

    .line 706
    return v2

    .line 708
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialDownY:F

    .line 709
    goto :goto_0

    .line 726
    .end local v1    # "pointerIndex":I
    :cond_5
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 727
    nop

    .line 736
    :goto_0
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    return v1

    .line 695
    :cond_6
    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    move-object v0, p0

    .line 600
    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v1

    .line 601
    .local v1, "width":I
    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v2

    .line 602
    .local v2, "height":I
    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 603
    return-void

    .line 605
    :cond_0
    iget-object v3, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v3, :cond_1

    .line 606
    invoke-direct {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 608
    :cond_1
    iget-object v3, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v3, :cond_2

    .line 609
    return-void

    .line 611
    :cond_2
    iget-object v3, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 612
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v4

    .line 613
    .local v4, "childLeft":I
    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v5

    .line 614
    .local v5, "childTop":I
    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 615
    .local v6, "childWidth":I
    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    .line 616
    .local v7, "childHeight":I
    add-int v8, v4, v6

    add-int v9, v5, v7

    invoke-virtual {v3, v4, v5, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 617
    iget-object v8, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v8}, Landroid/support/v4/widget/CircleImageView;->getMeasuredWidth()I

    move-result v8

    .line 618
    .local v8, "circleWidth":I
    iget-object v9, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v9}, Landroid/support/v4/widget/CircleImageView;->getMeasuredHeight()I

    move-result v9

    .line 619
    .local v9, "circleHeight":I
    iget-object v10, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    div-int/lit8 v11, v1, 0x2

    div-int/lit8 v12, v8, 0x2

    sub-int/2addr v11, v12

    iget v12, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    div-int/lit8 v13, v1, 0x2

    div-int/lit8 v14, v8, 0x2

    add-int/2addr v13, v14

    iget v14, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    add-int/2addr v14, v9

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/support/v4/widget/CircleImageView;->layout(IIII)V

    .line 621
    return-void
.end method

.method public onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 625
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 626
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v0, :cond_0

    .line 627
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 629
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v0, :cond_1

    .line 630
    return-void

    .line 632
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 633
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 632
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 635
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 634
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 632
    invoke-virtual {v0, v1, v3}, Landroid/view/View;->measure(II)V

    .line 636
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    .line 637
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 636
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/CircleImageView;->measure(II)V

    .line 638
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 640
    const/4 v0, 0x0

    .line 640
    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 641
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    if-ne v1, v2, :cond_2

    .line 642
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 643
    goto :goto_1

    .line 640
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 646
    .end local v0    # "index":I
    :cond_3
    :goto_1
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 889
    invoke-virtual {p0, p2, p3, p4}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .line 883
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .line 774
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p3, :cond_1

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    .line 775
    int-to-float v2, p3

    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 776
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    float-to-int v2, v2

    sub-int v2, p3, v2

    aput v2, p4, v1

    .line 777
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    goto :goto_0

    .line 779
    :cond_0
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    int-to-float v3, p3

    sub-float/2addr v2, v3

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 780
    aput p3, p4, v1

    .line 782
    :goto_0
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->moveSpinner(F)V

    .line 789
    :cond_1
    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v2, :cond_2

    if-lez p3, :cond_2

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v0, v2, v0

    if-nez v0, :cond_2

    aget v0, p4, v1

    sub-int v0, p3, v0

    .line 790
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_2

    .line 791
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 795
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mParentScrollConsumed:[I

    .line 796
    .local v0, "parentConsumed":[I
    const/4 v2, 0x0

    aget v3, p4, v2

    sub-int v3, p2, v3

    aget v4, p4, v1

    sub-int v4, p3, v4

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v0, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 797
    aget v3, p4, v2

    aget v4, v0, v2

    add-int/2addr v3, v4

    aput v3, p4, v2

    .line 798
    aget v2, p4, v1

    aget v3, v0, v1

    add-int/2addr v2, v3

    aput v2, p4, v1

    .line 800
    :cond_3
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 825
    iget-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    .line 833
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/2addr v0, p5

    .line 834
    .local v0, "dy":I
    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 835
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 836
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->moveSpinner(F)V

    .line 838
    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .line 763
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 765
    and-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startNestedScroll(I)Z

    .line 766
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 767
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 768
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 756
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v0, :cond_0

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .line 809
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 810
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 813
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 814
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->finishSpinner(F)V

    .line 815
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 818
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->stopNestedScroll()V

    .line 819
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 990
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 991
    .local v0, "action":I
    const/4 v1, -0x1

    .line 993
    .local v1, "pointerIndex":I
    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 994
    iput-boolean v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    .line 997
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v2, :cond_8

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v2

    if-nez v2, :cond_8

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-eqz v2, :cond_1

    goto/16 :goto_1

    .line 1003
    :cond_1
    const/high16 v2, 0x3f000000    # 0.5f

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 1041
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1042
    goto :goto_0

    .line 1030
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 1031
    if-gez v1, :cond_2

    .line 1032
    sget-object v2, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    return v3

    .line 1036
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 1037
    goto :goto_0

    .line 1061
    :pswitch_3
    return v3

    .line 1010
    :pswitch_4
    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 1011
    if-gez v1, :cond_3

    .line 1012
    sget-object v2, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    return v3

    .line 1016
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1017
    .local v4, "y":F
    invoke-direct {p0, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->startDragging(F)V

    .line 1019
    iget-boolean v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v5, :cond_7

    .line 1020
    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    sub-float v5, v4, v5

    mul-float v5, v5, v2

    .line 1021
    .local v5, "overscrollTop":F
    const/4 v2, 0x0

    cmpl-float v2, v5, v2

    if-lez v2, :cond_4

    .line 1022
    invoke-direct {p0, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->moveSpinner(F)V

    .line 1026
    .end local v5    # "overscrollTop":F
    goto :goto_0

    .line 1024
    .restart local v5    # "overscrollTop":F
    :cond_4
    return v3

    .line 1045
    .end local v4    # "y":F
    .end local v5    # "overscrollTop":F
    :pswitch_5
    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 1046
    if-gez v1, :cond_5

    .line 1047
    sget-object v2, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    return v3

    .line 1051
    :cond_5
    iget-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v4, :cond_6

    .line 1052
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1053
    .restart local v4    # "y":F
    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    sub-float v5, v4, v5

    mul-float v5, v5, v2

    .line 1054
    .restart local v5    # "overscrollTop":F
    iput-boolean v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 1055
    invoke-direct {p0, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->finishSpinner(F)V

    .line 1057
    .end local v4    # "y":F
    .end local v5    # "overscrollTop":F
    :cond_6
    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 1058
    return v3

    .line 1005
    :pswitch_6
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 1006
    iput-boolean v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 1007
    nop

    .line 1064
    :cond_7
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 1000
    :cond_8
    :goto_1
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 744
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 745
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 748
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 750
    :cond_2
    :goto_0
    return-void
.end method

.method reset()V
    .locals 2

    .line 204
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 205
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable;->stop()V

    .line 206
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 207
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 209
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_0

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    goto :goto_0

    .line 212
    :cond_0
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 214
    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 215
    return-void
.end method

.method setAnimationProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .line 451
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->setScaleX(F)V

    .line 452
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->setScaleY(F)V

    .line 453
    return-void
.end method

.method public varargs setColorScheme([I)V
    .locals 0
    .param p1, "colors"    # [I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 536
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 537
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1
    .param p1, "colors"    # [I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 563
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 564
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable;->setColorSchemeColors([I)V

    .line 565
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4
    .param p1, "colorResIds"    # [I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 547
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 548
    .local v0, "context":Landroid/content/Context;
    array-length v1, p1

    new-array v1, v1, [I

    .line 549
    .local v1, "colorRes":[I
    const/4 v2, 0x0

    .line 549
    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 550
    aget v3, p1, v2

    invoke-static {v0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 549
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 552
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 553
    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 1
    .param p1, "distance"    # I

    .line 595
    int-to-float v0, p1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 596
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 219
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 220
    if-nez p1, :cond_0

    .line 221
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->reset()V

    .line 223
    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 844
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 845
    return-void
.end method

.method public setOnChildScrollUpCallback(Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 678
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mChildScrollUpCallback:Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

    .line 679
    return-void
.end method

.method public setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    .line 397
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    .line 398
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .param p1, "colorRes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 510
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    .line 511
    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 528
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->setBackgroundColor(I)V

    .line 529
    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1
    .param p1, "colorRes"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 519
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 520
    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .locals 1
    .param p1, "scale"    # Z
    .param p2, "end"    # I

    .line 294
    iput p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 295
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    .line 296
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->invalidate()V

    .line 297
    return-void
.end method

.method public setProgressViewOffset(ZII)V
    .locals 1
    .param p1, "scale"    # Z
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 256
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    .line 257
    iput p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 258
    iput p3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    .line 260
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->reset()V

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 262
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 4
    .param p1, "refreshing"    # Z

    .line 407
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eq v1, p1, :cond_1

    .line 409
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 410
    const/4 v1, 0x0

    .line 411
    .local v1, "endTarget":I
    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez v2, :cond_0

    .line 412
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    add-int/2addr v2, v3

    .line 412
    .end local v1    # "endTarget":I
    .local v2, "endTarget":I
    :goto_0
    goto :goto_1

    .line 414
    .end local v2    # "endTarget":I
    .restart local v1    # "endTarget":I
    :cond_0
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    goto :goto_0

    .line 416
    .end local v1    # "endTarget":I
    .restart local v2    # "endTarget":I
    :goto_1
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int v1, v2, v1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 417
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNotify:Z

    .line 418
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    .line 419
    .end local v2    # "endTarget":I
    goto :goto_2

    .line 420
    :cond_1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    .line 422
    :goto_2
    return-void
.end method

.method public setSize(I)V
    .locals 3
    .param p1, "size"    # I

    .line 303
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 304
    return-void

    .line 306
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 307
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    if-nez p1, :cond_1

    .line 308
    const/high16 v1, 0x42600000    # 56.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    goto :goto_0

    .line 310
    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    .line 315
    :goto_0
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/CircularProgressDrawable;->setStyle(I)V

    .line 317
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    return-void
.end method

.method setTargetOffsetTopAndBottom(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 1157
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->bringToFront()V

    .line 1158
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1159
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 1160
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .param p1, "axes"    # I

    .line 854
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .line 469
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$3;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$3;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    .line 475
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 476
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 477
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 478
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 479
    return-void
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 859
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 860
    return-void
.end method
