.class public Lc8/hcp;
.super Landroid/widget/LinearLayout;
.source "YoukuSearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/gcp;,
        Lc8/fcp;,
        Lc8/ecp;
    }
.end annotation


# instance fields
.field private mChangedWhenWindowFocus:Z

.field private mCloseArea:Landroid/view/View;

.field private mCloseButton:Landroid/widget/ImageView;

.field private mDelay:J

.field private mIconButton:Landroid/widget/ImageView;

.field private mOnIconClickListener:Landroid/view/View$OnClickListener;

.field private mOnQueryChangeListener:Lc8/ecp;

.field private mOnSuggestionListener:Lc8/fcp;

.field private mQueryEditText:Lc8/gcp;

.field private mQueryText:Ljava/lang/String;

.field private mSearchableInfo:Landroid/app/SearchableInfo;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private mSubmitArea:Landroid/view/View;

.field private mSubmitButton:Landroid/widget/ImageView;

.field private mTask:Ljava/util/TimerTask;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mTimer:Ljava/util/Timer;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field private mVoiceButton:Landroid/widget/ImageView;

.field private mVoiceButtonEnabled:Z

.field private mVoiceClickListener:Landroid/view/View$OnClickListener;

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v3, 0x10000000

    .line 133
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lc8/hcp;->mDelay:J

    .line 78
    new-instance v0, Lc8/acp;

    invoke-direct {v0, p0}, Lc8/acp;-><init>(Lc8/hcp;)V

    iput-object v0, p0, Lc8/hcp;->mTextWatcher:Landroid/text/TextWatcher;

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/hcp;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 104
    iget-object v0, p0, Lc8/hcp;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    iget-object v0, p0, Lc8/hcp;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string/jumbo v2, "web_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/hcp;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 109
    iget-object v0, p0, Lc8/hcp;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    new-instance v0, Lc8/bcp;

    invoke-direct {v0, p0}, Lc8/bcp;-><init>(Lc8/hcp;)V

    iput-object v0, p0, Lc8/hcp;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 134
    invoke-direct {p0}, Lc8/hcp;->init()V

    .line 135
    invoke-direct {p0}, Lc8/hcp;->findView()V

    .line 136
    invoke-direct {p0}, Lc8/hcp;->initView()V

    .line 137
    invoke-direct {p0}, Lc8/hcp;->setListener()V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v3, 0x10000000

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lc8/hcp;->mDelay:J

    .line 78
    new-instance v0, Lc8/acp;

    invoke-direct {v0, p0}, Lc8/acp;-><init>(Lc8/hcp;)V

    iput-object v0, p0, Lc8/hcp;->mTextWatcher:Landroid/text/TextWatcher;

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/hcp;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 104
    iget-object v0, p0, Lc8/hcp;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    iget-object v0, p0, Lc8/hcp;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string/jumbo v2, "web_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/hcp;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 109
    iget-object v0, p0, Lc8/hcp;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    new-instance v0, Lc8/bcp;

    invoke-direct {v0, p0}, Lc8/bcp;-><init>(Lc8/hcp;)V

    iput-object v0, p0, Lc8/hcp;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 142
    invoke-direct {p0}, Lc8/hcp;->init()V

    .line 143
    invoke-direct {p0}, Lc8/hcp;->findView()V

    .line 144
    invoke-direct {p0}, Lc8/hcp;->initView()V

    .line 145
    invoke-direct {p0}, Lc8/hcp;->setListener()V

    .line 146
    return-void
.end method

.method static synthetic access$000(Lc8/hcp;)Lc8/ecp;
    .locals 1
    .param p0, "x0"    # Lc8/hcp;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/hcp;->mOnQueryChangeListener:Lc8/ecp;

    return-object v0
.end method

.method static synthetic access$100(Lc8/hcp;)Lc8/gcp;
    .locals 1
    .param p0, "x0"    # Lc8/hcp;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/hcp;->mQueryEditText:Lc8/gcp;

    return-object v0
.end method

.method static synthetic access$1000(Lc8/hcp;)Z
    .locals 1
    .param p0, "x0"    # Lc8/hcp;

    .prologue
    .line 39
    iget-boolean v0, p0, Lc8/hcp;->mChangedWhenWindowFocus:Z

    return v0
.end method

.method static synthetic access$200(Lc8/hcp;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lc8/hcp;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/hcp;->mCloseArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lc8/hcp;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lc8/hcp;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/hcp;->mSubmitButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lc8/hcp;)Z
    .locals 1
    .param p0, "x0"    # Lc8/hcp;

    .prologue
    .line 39
    iget-boolean v0, p0, Lc8/hcp;->mVoiceButtonEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lc8/hcp;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lc8/hcp;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/hcp;->mVoiceButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lc8/hcp;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/hcp;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lc8/hcp;->startTimer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lc8/hcp;)Lc8/fcp;
    .locals 1
    .param p0, "x0"    # Lc8/hcp;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/hcp;->mOnSuggestionListener:Lc8/fcp;

    return-object v0
.end method

.method static synthetic access$900(Lc8/hcp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/hcp;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/hcp;->mQueryText:Ljava/lang/String;

    return-object v0
.end method

.method private cancelTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 363
    iget-object v0, p0, Lc8/hcp;->mTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lc8/hcp;->mTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 366
    :cond_0
    iget-object v0, p0, Lc8/hcp;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lc8/hcp;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 370
    :cond_1
    iput-object v1, p0, Lc8/hcp;->mTimer:Ljava/util/Timer;

    .line 371
    iput-object v1, p0, Lc8/hcp;->mTask:Ljava/util/TimerTask;

    .line 372
    return-void
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 13
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    .prologue
    .line 453
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v8

    .line 458
    .local v8, "searchActivity":Landroid/content/ComponentName;
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.SEARCH"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    .local v6, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 460
    invoke-virtual {p0}, Lc8/hcp;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 468
    .local v3, "pending":Landroid/app/PendingIntent;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 474
    .local v5, "queryExtras":Landroid/os/Bundle;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 478
    .local v9, "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "free_form"

    .line 479
    .local v1, "languageModel":Ljava/lang/String;
    const/4 v4, 0x0

    .line 480
    .local v4, "prompt":Ljava/lang/String;
    const/4 v0, 0x0

    .line 481
    .local v0, "language":Ljava/lang/String;
    const/4 v2, 0x1

    .line 483
    .local v2, "maxResults":I
    invoke-virtual {p0}, Lc8/hcp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 484
    .local v7, "resources":Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    if-eqz v10, :cond_0

    .line 485
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 487
    :cond_0
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    if-eqz v10, :cond_1

    .line 488
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 490
    :cond_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    if-eqz v10, :cond_2

    .line 491
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 493
    :cond_2
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v10

    if-eqz v10, :cond_3

    .line 494
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v2

    .line 496
    :cond_3
    const-string/jumbo v10, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v9, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    const-string/jumbo v10, "android.speech.extra.PROMPT"

    invoke-virtual {v9, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    const-string/jumbo v10, "android.speech.extra.LANGUAGE"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    const-string/jumbo v10, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v9, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 500
    const-string/jumbo v11, "calling_package"

    if-nez v8, :cond_4

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    const-string/jumbo v10, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v9, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 505
    const-string/jumbo v10, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 507
    return-object v9

    .line 501
    :cond_4
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 4
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    .prologue
    .line 436
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 437
    .local v1, "voiceIntent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 438
    .local v0, "searchActivity":Landroid/content/ComponentName;
    const-string/jumbo v3, "calling_package"

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    return-object v1

    .line 439
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 154
    sget v0, Lcom/youku/phone/R$id;->bt_widget_search_icon:I

    invoke-virtual {p0, v0}, Lc8/hcp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc8/hcp;->mIconButton:Landroid/widget/ImageView;

    .line 155
    sget v0, Lcom/youku/phone/R$id;->et_widget_search_text:I

    invoke-virtual {p0, v0}, Lc8/hcp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/gcp;

    iput-object v0, p0, Lc8/hcp;->mQueryEditText:Lc8/gcp;

    .line 156
    sget v0, Lcom/youku/phone/R$id;->bt_widget_search_clear:I

    invoke-virtual {p0, v0}, Lc8/hcp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc8/hcp;->mCloseButton:Landroid/widget/ImageView;

    .line 157
    sget v0, Lcom/youku/phone/R$id;->bt_widget_search_go:I

    invoke-virtual {p0, v0}, Lc8/hcp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc8/hcp;->mSubmitButton:Landroid/widget/ImageView;

    .line 158
    sget v0, Lcom/youku/phone/R$id;->bt_widget_search_voice:I

    invoke-virtual {p0, v0}, Lc8/hcp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc8/hcp;->mVoiceButton:Landroid/widget/ImageView;

    .line 160
    sget v0, Lcom/youku/phone/R$id;->ll_widget_search_clear_area:I

    invoke-virtual {p0, v0}, Lc8/hcp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lc8/hcp;->mCloseArea:Landroid/view/View;

    .line 161
    sget v0, Lcom/youku/phone/R$id;->ll_widget_search_submit_area:I

    invoke-virtual {p0, v0}, Lc8/hcp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lc8/hcp;->mSubmitArea:Landroid/view/View;

    .line 162
    return-void
.end method

.method private hasVoiceSearch()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 317
    iget-object v3, p0, Lc8/hcp;->mSearchableInfo:Landroid/app/SearchableInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lc8/hcp;->mSearchableInfo:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 318
    const/4 v1, 0x0

    .line 319
    .local v1, "testIntent":Landroid/content/Intent;
    iget-object v3, p0, Lc8/hcp;->mSearchableInfo:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 320
    iget-object v1, p0, Lc8/hcp;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 324
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 325
    invoke-virtual {p0}, Lc8/hcp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 327
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 330
    .end local v0    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v1    # "testIntent":Landroid/content/Intent;
    :cond_1
    return v2

    .line 321
    .restart local v1    # "testIntent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lc8/hcp;->mSearchableInfo:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 322
    iget-object v1, p0, Lc8/hcp;->mVoiceAppSearchIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 149
    invoke-virtual {p0}, Lc8/hcp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 150
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/youku/phone/R$layout;->widget_search_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 151
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 165
    iget-object v1, p0, Lc8/hcp;->mQueryEditText:Lc8/gcp;

    invoke-virtual {v1}, Lc8/gcp;->getInputType()I

    move-result v0

    .line 166
    .local v0, "inputType":I
    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 167
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 168
    iget-object v1, p0, Lc8/hcp;->mQueryEditText:Lc8/gcp;

    invoke-virtual {v1, v0}, Lc8/gcp;->setRawInputType(I)V

    .line 171
    :cond_0
    iget-object v1, p0, Lc8/hcp;->mQueryEditText:Lc8/gcp;

    invoke-static {v1, p0}, Lc8/gcp;->access$700(Lc8/gcp;Lc8/hcp;)V

    .line 172
    iget-object v1, p0, Lc8/hcp;->mQueryEditText:Lc8/gcp;

    invoke-virtual {v1}, Lc8/gcp;->clearFocus()V

    .line 173
    return-void
.end method

.method private launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "actionKey"    # I
    .param p2, "actionMsg"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;

    .prologue
    .line 376
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 377
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "keyword"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lc8/hcp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v1

    const-string/jumbo v2, "sokusdk://searchresult"

    invoke-virtual {v1, v2}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 379
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lc8/hcp;->mIconButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lc8/hcp;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lc8/hcp;->mSubmitButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lc8/hcp;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lc8/hcp;->mQueryEditText:Lc8/gcp;

    iget-object v1, p0, Lc8/hcp;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lc8/gcp;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 182
    return-void
.end method

.method private startTimer(Ljava/lang/String;)V
    .locals 4
    .param p1, "queryText"    # Ljava/lang/String;

    .prologue
    .line 338
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lc8/hcp;->mQueryText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    .line 339
    .local v0, "delay":J
    :goto_0
    iput-object p1, p0, Lc8/hcp;->mQueryText:Ljava/lang/String;

    .line 341
    invoke-direct {p0}, Lc8/hcp;->cancelTimer()V

    .line 343
    new-instance v2, Ljava/util/Timer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/Timer;-><init>(Z)V

    iput-object v2, p0, Lc8/hcp;->mTimer:Ljava/util/Timer;

    .line 344
    new-instance v2, Lc8/dcp;

    invoke-direct {v2, p0}, Lc8/dcp;-><init>(Lc8/hcp;)V

    iput-object v2, p0, Lc8/hcp;->mTask:Ljava/util/TimerTask;

    .line 359
    iget-object v2, p0, Lc8/hcp;->mTimer:Ljava/util/Timer;

    iget-object v3, p0, Lc8/hcp;->mTask:Ljava/util/TimerTask;

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 360
    return-void

    .line 338
    .end local v0    # "delay":J
    :cond_1
    iget-wide v0, p0, Lc8/hcp;->mDelay:J

    goto :goto_0
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lc8/hcp;->mQueryEditText:Lc8/gcp;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lc8/hcp;->mQueryEditText:Lc8/gcp;

    invoke-virtual {v0}, Lc8/gcp;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 383
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/youku/phone/R$id;->bt_widget_search_icon:I

    if-ne v3, v4, :cond_1

    .line 384
    iget-object v3, p0, Lc8/hcp;->mOnIconClickListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_0

    .line 385
    iget-object v3, p0, Lc8/hcp;->mOnIconClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v3, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/youku/phone/R$id;->bt_widget_search_clear:I

    if-ne v3, v4, :cond_2

    .line 388
    iget-object v3, p0, Lc8/hcp;->mQueryEditText:Lc8/gcp;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Lc8/gcp;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v3, p0, Lc8/hcp;->mQueryEditText:Lc8/gcp;

    invoke-virtual {v3}, Lc8/gcp;->requestFocus()Z

    .line 390
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lc8/hcp;->setImeVisibility(Z)V

    goto :goto_0

    .line 391
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/youku/phone/R$id;->bt_widget_search_go:I

    if-ne v3, v4, :cond_5

    .line 392
    iget-object v3, p0, Lc8/hcp;->mQueryEditText:Lc8/gcp;

    invoke-virtual {v3}, Lc8/gcp;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "query":Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v3

    if-lez v3, :cond_4

    .line 395
    iget-object v3, p0, Lc8/hcp;->mOnQueryChangeListener:Lc8/ecp;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lc8/hcp;->mOnQueryChangeListener:Lc8/ecp;

    invoke-interface {v3, v1}, Lc8/ecp;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 398
    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, v5, v3, v1}, Lc8/hcp;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0, v5}, Lc8/hcp;->setImeVisibility(Z)V

    goto :goto_0

    .line 403
    :cond_4
    iget-object v3, p0, Lc8/hcp;->mOnQueryChangeListener:Lc8/ecp;

    if-eqz v3, :cond_0

    .line 404
    iget-object v3, p0, Lc8/hcp;->mOnQueryChangeListener:Lc8/ecp;

    invoke-interface {v3}, Lc8/ecp;->onQueryInputInvalid()Z

    goto :goto_0

    .line 407
    .end local v1    # "query":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/youku/phone/R$id;->bt_widget_search_voice:I

    if-ne v3, v4, :cond_0

    .line 408
    iget-object v3, p0, Lc8/hcp;->mVoiceClickListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_6

    .line 409
    iget-object v3, p0, Lc8/hcp;->mVoiceClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v3, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 412
    :cond_6
    iget-object v3, p0, Lc8/hcp;->mSearchableInfo:Landroid/app/SearchableInfo;

    if-eqz v3, :cond_0

    .line 417
    :try_start_0
    iget-object v3, p0, Lc8/hcp;->mSearchableInfo:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 418
    iget-object v3, p0, Lc8/hcp;->mVoiceWebSearchIntent:Landroid/content/Intent;

    iget-object v4, p0, Lc8/hcp;->mSearchableInfo:Landroid/app/SearchableInfo;

    invoke-direct {p0, v3, v4}, Lc8/hcp;->createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v2

    .line 419
    .local v2, "webSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lc8/hcp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v2    # "webSearchIntent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 420
    :cond_7
    iget-object v3, p0, Lc8/hcp;->mSearchableInfo:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 421
    iget-object v3, p0, Lc8/hcp;->mVoiceAppSearchIntent:Landroid/content/Intent;

    iget-object v4, p0, Lc8/hcp;->mSearchableInfo:Landroid/app/SearchableInfo;

    invoke-direct {p0, v3, v4}, Lc8/hcp;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 422
    .local v0, "appSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lc8/hcp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 188
    invoke-direct {p0}, Lc8/hcp;->cancelTimer()V

    .line 189
    return-void
.end method

.method public setChangedWhenWindowFocus(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 531
    iput-boolean p1, p0, Lc8/hcp;->mChangedWhenWindowFocus:Z

    .line 532
    return-void
.end method

.method public setClickable(Z)V
    .locals 3
    .param p1, "clickable"    # Z

    .prologue
    .line 272
    if-eqz p1, :cond_0

    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, "enabled":Z
    const/16 v1, 0x8

    .line 281
    .local v1, "visibility":I
    :goto_0
    iget-object v2, p0, Lc8/hcp;->mQueryEditText:Lc8/gcp;

    invoke-virtual {v2, v0}, Lc8/gcp;->setEnabled(Z)V

    .line 282
    iget-object v2, p0, Lc8/hcp;->mCloseArea:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v2, p0, Lc8/hcp;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 286
    return-void

    .line 276
    .end local v0    # "enabled":Z
    .end local v1    # "visibility":I
    :cond_0
    const/4 v0, 0x1

    .line 277
    .restart local v0    # "enabled":Z
    const/4 v1, 0x0

    .restart local v1    # "visibility":I
    goto :goto_0
.end method

.method public setEditFocus(Z)V
    .locals 1
    .param p1, "focus"    # Z

    .prologue
    .line 296
    if-eqz p1, :cond_0

    .line 297
    iget-object v0, p0, Lc8/hcp;->mQueryEditText:Lc8/gcp;

    invoke-virtual {v0}, Lc8/gcp;->requestFocus()Z

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lc8/hcp;->mQueryEditText:Lc8/gcp;

    invoke-virtual {v0}, Lc8/gcp;->clearFocus()V

    goto :goto_0
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 313
    iget-object v0, p0, Lc8/hcp;->mQueryEditText:Lc8/gcp;

    invoke-virtual {v0, p1}, Lc8/gcp;->setHint(Ljava/lang/CharSequence;)V

    .line 314
    return-void
.end method

.method public setIconVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lc8/hcp;->mIconButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    return-void
.end method

.method public setImeVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 514
    if-eqz p1, :cond_1

    .line 515
    iget-object v1, p0, Lc8/hcp;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lc8/hcp;->post(Ljava/lang/Runnable;)Z

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    iget-object v1, p0, Lc8/hcp;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lc8/hcp;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 518
    invoke-virtual {p0}, Lc8/hcp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 521
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {p0}, Lc8/hcp;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 262
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/hcp;->setClickable(Z)V

    .line 263
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    return-void
.end method

.method public setOnIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onIconClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 238
    iput-object p1, p0, Lc8/hcp;->mOnIconClickListener:Landroid/view/View$OnClickListener;

    .line 239
    return-void
.end method

.method public setOnQueryChangeListener(Lc8/ecp;)V
    .locals 0
    .param p1, "onQueryTextListener"    # Lc8/ecp;

    .prologue
    .line 247
    iput-object p1, p0, Lc8/hcp;->mOnQueryChangeListener:Lc8/ecp;

    .line 248
    return-void
.end method

.method public setOnQueryFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1
    .param p1, "mOnQueryFocusChangeListener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 252
    iget-object v0, p0, Lc8/hcp;->mQueryEditText:Lc8/gcp;

    invoke-virtual {v0, p1}, Lc8/gcp;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 253
    return-void
.end method

.method public setOnSuggestionListener(Lc8/fcp;)V
    .locals 0
    .param p1, "onSuggestionListener"    # Lc8/fcp;

    .prologue
    .line 257
    iput-object p1, p0, Lc8/hcp;->mOnSuggestionListener:Lc8/fcp;

    .line 258
    return-void
.end method

.method public setOnVoiceClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 242
    iput-object p1, p0, Lc8/hcp;->mVoiceClickListener:Landroid/view/View$OnClickListener;

    .line 243
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 309
    iget-object v0, p0, Lc8/hcp;->mQueryEditText:Lc8/gcp;

    invoke-virtual {v0, p1}, Lc8/gcp;->setText(Ljava/lang/CharSequence;)V

    .line 310
    return-void
.end method

.method public setRequestSuggestionDelay(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 289
    iput-wide p1, p0, Lc8/hcp;->mDelay:J

    .line 290
    return-void
.end method

.method public setSearchableInfo(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 196
    const-string/jumbo v3, "search"

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 197
    .local v1, "searchManager":Landroid/app/SearchManager;
    const/4 v2, 0x0

    .line 206
    .local v2, "searchableInfo":Landroid/app/SearchableInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 211
    :goto_0
    invoke-virtual {p0, v2}, Lc8/hcp;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 212
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 2
    .param p1, "searchableInfo"    # Landroid/app/SearchableInfo;

    .prologue
    .line 216
    iput-object p1, p0, Lc8/hcp;->mSearchableInfo:Landroid/app/SearchableInfo;

    .line 223
    invoke-direct {p0}, Lc8/hcp;->hasVoiceSearch()Z

    move-result v0

    iput-boolean v0, p0, Lc8/hcp;->mVoiceButtonEnabled:Z

    .line 225
    iget-boolean v0, p0, Lc8/hcp;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lc8/hcp;->mQueryEditText:Lc8/gcp;

    const-string/jumbo v1, "nm"

    invoke-virtual {v0, v1}, Lc8/gcp;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 230
    :cond_0
    iget-object v1, p0, Lc8/hcp;->mVoiceButton:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lc8/hcp;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    return-void

    .line 230
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public startTimer()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lc8/hcp;->mQueryText:Ljava/lang/String;

    invoke-direct {p0, v0}, Lc8/hcp;->startTimer(Ljava/lang/String;)V

    .line 335
    return-void
.end method
