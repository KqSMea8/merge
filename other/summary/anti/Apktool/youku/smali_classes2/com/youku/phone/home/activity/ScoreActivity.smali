.class public Lcom/youku/phone/home/activity/ScoreActivity;
.super Landroid/app/Activity;
.source "ScoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCloseIcon:Landroid/widget/ImageView;

.field private mCommentBtn:Landroid/view/View;

.field private mScoreBtn:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private alibabaPagePVStatics()V
    .locals 3

    .prologue
    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lc8/JWc;->getInstance()Lc8/JWc;

    move-result-object v1

    const-string/jumbo v2, "ScoreActivity"

    invoke-virtual {v1, p0, v2, v0}, Lc8/JWc;->startSessionForUt(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 101
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/youku/phone/R$id;->score_dialog_comment_btn_ll:I

    invoke-virtual {p0, v0}, Lcom/youku/phone/home/activity/ScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/home/activity/ScoreActivity;->mCommentBtn:Landroid/view/View;

    .line 51
    sget v0, Lcom/youku/phone/R$id;->score_dialog_score_btn_ll:I

    invoke-virtual {p0, v0}, Lcom/youku/phone/home/activity/ScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/home/activity/ScoreActivity;->mScoreBtn:Landroid/view/View;

    .line 52
    sget v0, Lcom/youku/phone/R$id;->score_dialog_close_icon:I

    invoke-virtual {p0, v0}, Lcom/youku/phone/home/activity/ScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/phone/home/activity/ScoreActivity;->mCloseIcon:Landroid/widget/ImageView;

    .line 54
    iget-object v0, p0, Lcom/youku/phone/home/activity/ScoreActivity;->mCommentBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/youku/phone/home/activity/ScoreActivity;->mScoreBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/youku/phone/home/activity/ScoreActivity;->mCloseIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method private isOutOfBounds(Landroid/app/Activity;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 84
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 85
    .local v2, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 86
    .local v3, "y":I
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v1

    .line 87
    .local v1, "slop":I
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, "decorView":Landroid/view/View;
    neg-int v4, v1

    if-lt v2, v4, :cond_0

    neg-int v4, v1

    if-lt v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    if-gt v2, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    if-le v3, v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static launch(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/phone/home/activity/ScoreActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 34
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/youku/phone/R$id;->score_dialog_comment_btn_ll:I

    if-ne v0, v1, :cond_1

    .line 62
    const-string/jumbo v0, "rate.feedback"

    invoke-static {v0}, Lc8/rin;->scoreDialogStatics(Ljava/lang/String;)V

    .line 63
    invoke-static {p0}, Lc8/lSh;->getFeedbackWebViewURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$string;->score_dialog_comment_title:I

    invoke-virtual {p0, v1}, Lcom/youku/phone/home/activity/ScoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lc8/bzo;->goWebViewWithParameter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/youku/phone/home/activity/ScoreActivity;->finish()V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/youku/phone/R$id;->score_dialog_score_btn_ll:I

    if-ne v0, v1, :cond_2

    .line 66
    const-string/jumbo v0, "rate.positive"

    invoke-static {v0}, Lc8/rin;->scoreDialogStatics(Ljava/lang/String;)V

    .line 67
    invoke-static {p0}, Lc8/bzo;->goScore(Landroid/app/Activity;)V

    .line 68
    invoke-virtual {p0}, Lcom/youku/phone/home/activity/ScoreActivity;->finish()V

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/youku/phone/R$id;->score_dialog_close_icon:I

    if-ne v0, v1, :cond_0

    .line 70
    const-string/jumbo v0, "rate.cancel"

    invoke-static {v0}, Lc8/rin;->scoreDialogStatics(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/youku/phone/home/activity/ScoreActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/youku/phone/home/activity/ScoreActivity;->requestWindowFeature(I)Z

    .line 41
    invoke-virtual {p0}, Lcom/youku/phone/home/activity/ScoreActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 43
    sget v0, Lcom/youku/phone/R$layout;->score_dialog_view:I

    invoke-virtual {p0, v0}, Lcom/youku/phone/home/activity/ScoreActivity;->setContentView(I)V

    .line 45
    invoke-direct {p0}, Lcom/youku/phone/home/activity/ScoreActivity;->initView()V

    .line 47
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 95
    invoke-direct {p0}, Lcom/youku/phone/home/activity/ScoreActivity;->alibabaPagePVStatics()V

    .line 96
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p0, p1}, Lcom/youku/phone/home/activity/ScoreActivity;->isOutOfBounds(Landroid/app/Activity;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
