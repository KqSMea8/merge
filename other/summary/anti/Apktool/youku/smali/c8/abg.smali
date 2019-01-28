.class public abstract Lc8/abg;
.super Lc8/tbg;
.source "AbstractEditComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Zag;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/tbg",
        "<",
        "Lc8/peg;",
        ">;"
    }
.end annotation


# instance fields
.field private mAutoFocus:Z

.field private mBeforeText:Ljava/lang/String;

.field private mEditorAction:I

.field private mEditorActionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView$OnEditorActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIgnoreNextOnInputEvent:Z

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLastValue:Ljava/lang/String;

.field private mListeningKeyboard:Z

.field private mMax:Ljava/lang/String;

.field private mMin:Ljava/lang/String;

.field private mReturnKeyType:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field private mUnregister:Lc8/Kcg;


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V
    .locals 3
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "isLazy"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/tbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V

    .line 64
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/abg;->mBeforeText:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "text"

    iput-object v0, p0, Lc8/abg;->mType:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lc8/abg;->mMax:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lc8/abg;->mMin:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/abg;->mLastValue:Ljava/lang/String;

    .line 70
    const/4 v0, 0x6

    iput v0, p0, Lc8/abg;->mEditorAction:I

    .line 71
    iput-object v1, p0, Lc8/abg;->mReturnKeyType:Ljava/lang/String;

    .line 73
    iput-boolean v2, p0, Lc8/abg;->mListeningKeyboard:Z

    .line 75
    iput-boolean v2, p0, Lc8/abg;->mIgnoreNextOnInputEvent:Z

    .line 79
    invoke-virtual {p0}, Lc8/abg;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lc8/abg;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lc8/abg;)V
    .locals 0
    .param p0, "x0"    # Lc8/abg;

    .prologue
    .line 61
    invoke-direct {p0}, Lc8/abg;->decideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$100(Lc8/abg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/abg;

    .prologue
    .line 61
    iget-object v0, p0, Lc8/abg;->mType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lc8/abg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/abg;

    .prologue
    .line 61
    iget-object v0, p0, Lc8/abg;->mReturnKeyType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lc8/abg;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lc8/abg;

    .prologue
    .line 61
    iget-object v0, p0, Lc8/abg;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1200(Lc8/abg;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lc8/abg;

    .prologue
    .line 61
    iget-object v0, p0, Lc8/abg;->mEditorActionListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lc8/abg;)Z
    .locals 1
    .param p0, "x0"    # Lc8/abg;

    .prologue
    .line 61
    iget-boolean v0, p0, Lc8/abg;->mListeningKeyboard:Z

    return v0
.end method

.method static synthetic access$200(Lc8/abg;)V
    .locals 0
    .param p0, "x0"    # Lc8/abg;

    .prologue
    .line 61
    invoke-direct {p0}, Lc8/abg;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$300(Lc8/abg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/abg;

    .prologue
    .line 61
    iget-object v0, p0, Lc8/abg;->mMax:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lc8/abg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/abg;

    .prologue
    .line 61
    iget-object v0, p0, Lc8/abg;->mMin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lc8/abg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/abg;

    .prologue
    .line 61
    iget-object v0, p0, Lc8/abg;->mLastValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lc8/abg;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/abg;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lc8/abg;->mLastValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lc8/abg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/abg;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lc8/abg;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lc8/abg;)I
    .locals 1
    .param p0, "x0"    # Lc8/abg;

    .prologue
    .line 61
    iget v0, p0, Lc8/abg;->mEditorAction:I

    return v0
.end method

.method static synthetic access$800(Lc8/abg;)Z
    .locals 1
    .param p0, "x0"    # Lc8/abg;

    .prologue
    .line 61
    iget-boolean v0, p0, Lc8/abg;->mIgnoreNextOnInputEvent:Z

    return v0
.end method

.method static synthetic access$802(Lc8/abg;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/abg;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lc8/abg;->mIgnoreNextOnInputEvent:Z

    return p1
.end method

.method static synthetic access$900(Lc8/abg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/abg;

    .prologue
    .line 61
    iget-object v0, p0, Lc8/abg;->mBeforeText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lc8/abg;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/abg;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lc8/abg;->mBeforeText:Ljava/lang/String;

    return-object p1
.end method

.method private addKeyboardListener(Lc8/peg;)V
    .locals 2
    .param p1, "host"    # Lc8/peg;

    .prologue
    .line 720
    if-nez p1, :cond_1

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    invoke-virtual {p1}, Lc8/peg;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 724
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 725
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    new-instance v1, Lc8/Pag;

    invoke-direct {v1, p0}, Lc8/Pag;-><init>(Lc8/abg;)V

    invoke-static {v0, v1}, Lc8/Lcg;->registerKeyboardEventListener(Landroid/app/Activity;Lc8/Jcg;)Lc8/Kcg;

    goto :goto_0
.end method

.method private applyOnClickListener()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lc8/Rag;

    invoke-direct {v0, p0}, Lc8/Rag;-><init>(Lc8/abg;)V

    invoke-virtual {p0, v0}, Lc8/abg;->addClickListener(Lc8/qbg;)V

    .line 133
    return-void
.end method

.method private decideSoftKeyboard()V
    .locals 6

    .prologue
    .line 647
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v1

    .local v1, "hostView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 648
    invoke-virtual {p0}, Lc8/abg;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 649
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 650
    new-instance v2, Lc8/Yag;

    invoke-direct {v2, p0, v0}, Lc8/Yag;-><init>(Lc8/abg;Landroid/content/Context;)V

    const-wide/16 v4, 0x10

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 661
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method private fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 266
    if-eqz p1, :cond_0

    .line 267
    new-instance v4, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 268
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "value"

    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string/jumbo v0, "timeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 272
    .local v5, "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 273
    .local v6, "attrsChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "value"

    invoke-interface {v6, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string/jumbo v0, "attrs"

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {p0}, Lc8/abg;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lc8/abg;->getDomObject()Lc8/qYf;

    move-result-object v2

    invoke-interface {v2}, Lc8/qYf;->getRef()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lc8/pVf;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 278
    .end local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "attrsChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private getInputType(Ljava/lang/String;)I
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 521
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 553
    const/4 v0, 0x1

    .line 555
    .local v0, "inputType":I
    :goto_1
    return v0

    .line 521
    .end local v0    # "inputType":I
    :sswitch_0
    const-string/jumbo v3, "text"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "date"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "datetime"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "email"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v3, "password"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v3, "tel"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v3, "time"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v3, "url"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v3, "number"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    .line 523
    :pswitch_0
    const/4 v0, 0x1

    .line 524
    .restart local v0    # "inputType":I
    goto :goto_1

    .line 526
    .end local v0    # "inputType":I
    :pswitch_1
    const/4 v0, 0x0

    .line 527
    .restart local v0    # "inputType":I
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/peg;

    invoke-virtual {v1, v2}, Lc8/peg;->setFocusable(Z)V

    goto/16 :goto_1

    .line 530
    .end local v0    # "inputType":I
    :pswitch_2
    const/4 v0, 0x4

    .line 531
    .restart local v0    # "inputType":I
    goto/16 :goto_1

    .line 533
    .end local v0    # "inputType":I
    :pswitch_3
    const/16 v0, 0x21

    .line 534
    .restart local v0    # "inputType":I
    goto/16 :goto_1

    .line 536
    .end local v0    # "inputType":I
    :pswitch_4
    const/16 v0, 0x81

    .line 537
    .restart local v0    # "inputType":I
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/peg;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/peg;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto/16 :goto_1

    .line 540
    .end local v0    # "inputType":I
    :pswitch_5
    const/4 v0, 0x3

    .line 541
    .restart local v0    # "inputType":I
    goto/16 :goto_1

    .line 543
    .end local v0    # "inputType":I
    :pswitch_6
    const/4 v0, 0x0

    .line 544
    .restart local v0    # "inputType":I
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/peg;

    invoke-virtual {v1, v2}, Lc8/peg;->setFocusable(Z)V

    goto/16 :goto_1

    .line 547
    .end local v0    # "inputType":I
    :pswitch_7
    const/16 v0, 0x11

    .line 548
    .restart local v0    # "inputType":I
    goto/16 :goto_1

    .line 550
    .end local v0    # "inputType":I
    :pswitch_8
    const/4 v0, 0x2

    .line 551
    .restart local v0    # "inputType":I
    goto/16 :goto_1

    .line 521
    :sswitch_data_0
    .sparse-switch
        -0x3da724b7 -> :sswitch_8
        0x1c01b -> :sswitch_5
        0x1c56f -> :sswitch_7
        0x2eefae -> :sswitch_1
        0x36452d -> :sswitch_0
        0x3652cd -> :sswitch_6
        0x5c24b9c -> :sswitch_3
        0x4889ba9b -> :sswitch_4
        0x6ae9bb7b -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getTextAlign(Ljava/lang/String;)I
    .locals 3
    .param p1, "textAlign"    # Ljava/lang/String;

    .prologue
    .line 594
    const v0, 0x800003

    .line 595
    .local v0, "align":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 605
    .end local v0    # "align":I
    .local v1, "align":I
    :goto_0
    return v1

    .line 598
    .end local v1    # "align":I
    .restart local v0    # "align":I
    :cond_0
    const-string/jumbo v2, "left"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 599
    const v0, 0x800003

    :cond_1
    :goto_1
    move v1, v0

    .line 605
    .end local v0    # "align":I
    .restart local v1    # "align":I
    goto :goto_0

    .line 600
    .end local v1    # "align":I
    .restart local v0    # "align":I
    :cond_2
    const-string/jumbo v2, "center"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 601
    const/16 v0, 0x11

    goto :goto_1

    .line 602
    :cond_3
    const-string/jumbo v2, "right"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 603
    const v0, 0x800005

    goto :goto_1
.end method

.method private hideSoftKeyboard()V
    .locals 4

    .prologue
    .line 583
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/peg;

    new-instance v1, Lc8/Xag;

    invoke-direct {v1, p0}, Lc8/Xag;-><init>(Lc8/abg;)V

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lc8/peg;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 591
    :cond_0
    return-void
.end method

.method private showSoftKeyboard()Z
    .locals 4

    .prologue
    .line 569
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 570
    const/4 v0, 0x0

    .line 579
    :goto_0
    return v0

    .line 572
    :cond_0
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/peg;

    new-instance v1, Lc8/Wag;

    invoke-direct {v1, p0}, Lc8/Wag;-><init>(Lc8/abg;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lc8/peg;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 579
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected final addEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/widget/TextView$OnEditorActionListener;

    .prologue
    .line 698
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, "view":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 699
    iget-object v1, p0, Lc8/abg;->mEditorActionListeners:Ljava/util/List;

    if-nez v1, :cond_0

    .line 700
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc8/abg;->mEditorActionListeners:Ljava/util/List;

    .line 701
    new-instance v1, Lc8/Oag;

    invoke-direct {v1, p0}, Lc8/Oag;-><init>(Lc8/abg;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 715
    :cond_0
    iget-object v1, p0, Lc8/abg;->mEditorActionListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    .end local v0    # "view":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method public addEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-super {p0, p1}, Lc8/tbg;->addEvent(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 168
    .local v0, "text":Landroid/widget/TextView;
    const-string/jumbo v1, "change"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 169
    new-instance v1, Lc8/Sag;

    invoke-direct {v1, p0, v0}, Lc8/Sag;-><init>(Lc8/abg;Landroid/widget/TextView;)V

    invoke-virtual {p0, v1}, Lc8/abg;->addFocusChangeListener(Lc8/rbg;)V

    .line 185
    new-instance v1, Lc8/Tag;

    invoke-direct {v1, p0, v0}, Lc8/Tag;-><init>(Lc8/abg;Landroid/widget/TextView;)V

    invoke-virtual {p0, v1}, Lc8/abg;->addEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 244
    :cond_2
    :goto_1
    const-string/jumbo v1, "return"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 245
    new-instance v1, Lc8/Vag;

    invoke-direct {v1, p0}, Lc8/Vag;-><init>(Lc8/abg;)V

    invoke-virtual {p0, v1}, Lc8/abg;->addEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 260
    :cond_3
    const-string/jumbo v1, "keyboard"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/abg;->mListeningKeyboard:Z

    goto :goto_0

    .line 204
    :cond_4
    const-string/jumbo v1, "input"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    new-instance v1, Lc8/Uag;

    invoke-direct {v1, p0}, Lc8/Uag;-><init>(Lc8/abg;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1
.end method

.method protected appleStyleAfterCreated(Lc8/peg;)V
    .locals 6
    .param p1, "editText"    # Lc8/peg;

    .prologue
    .line 145
    invoke-virtual {p0}, Lc8/abg;->getDomObject()Lc8/qYf;

    move-result-object v3

    invoke-interface {v3}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v3

    const-string/jumbo v4, "textAlign"

    invoke-virtual {v3, v4}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    .local v0, "alignStr":Ljava/lang/String;
    invoke-direct {p0, v0}, Lc8/abg;->getTextAlign(Ljava/lang/String;)I

    move-result v2

    .line 147
    .local v2, "textAlign":I
    if-gtz v2, :cond_0

    .line 148
    const v2, 0x800003

    .line 150
    :cond_0
    invoke-virtual {p0}, Lc8/abg;->getVerticalGravity()I

    move-result v3

    or-int/2addr v3, v2

    invoke-virtual {p1, v3}, Lc8/peg;->setGravity(I)V

    .line 151
    const-string/jumbo v3, "#999999"

    invoke-static {v3}, Lc8/Bgg;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 152
    .local v1, "colorInt":I
    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_1

    .line 153
    invoke-virtual {p1, v1}, Lc8/peg;->setHintTextColor(I)V

    .line 156
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0}, Lc8/abg;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v4

    invoke-virtual {p0}, Lc8/abg;->getInstance()Lc8/nVf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v5

    invoke-static {v4, v5}, Lc8/PYf;->getFontSize(Ljava/util/Map;I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Lc8/peg;->setTextSize(IF)V

    .line 157
    return-void
.end method

.method public blur()V
    .locals 2
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 610
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/peg;

    .line 611
    .local v0, "host":Lc8/peg;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc8/peg;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 612
    invoke-virtual {p0}, Lc8/abg;->getParent()Lc8/scg;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 613
    invoke-virtual {p0}, Lc8/abg;->getParent()Lc8/scg;

    move-result-object v1

    invoke-virtual {v1}, Lc8/scg;->interceptFocus()V

    .line 615
    :cond_0
    invoke-virtual {v0}, Lc8/peg;->clearFocus()V

    .line 616
    invoke-direct {p0}, Lc8/abg;->hideSoftKeyboard()V

    .line 618
    :cond_1
    return-void
.end method

.method protected convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "originalValue"    # Ljava/lang/Object;

    .prologue
    .line 636
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 642
    invoke-super {p0, p1, p2}, Lc8/tbg;->convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    .line 636
    :sswitch_0
    const-string/jumbo v1, "fontSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 638
    :pswitch_0
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 640
    :pswitch_1
    const-string/jumbo v0, "black"

    goto :goto_1

    .line 636
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a72f63 -> :sswitch_1
        0x15caa0f0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 743
    invoke-super {p0}, Lc8/tbg;->destroy()V

    .line 744
    iget-object v1, p0, Lc8/abg;->mUnregister:Lc8/Kcg;

    if-eqz v1, :cond_0

    .line 746
    :try_start_0
    iget-object v1, p0, Lc8/abg;->mUnregister:Lc8/Kcg;

    invoke-interface {v1}, Lc8/Kcg;->execute()V

    .line 747
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/abg;->mUnregister:Lc8/Kcg;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 748
    :catch_0
    move-exception v0

    .line 749
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "Unregister throw "

    invoke-static {v1, v0}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public focus()V
    .locals 3
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 622
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/peg;

    .line 623
    .local v0, "host":Lc8/peg;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc8/peg;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 624
    invoke-virtual {p0}, Lc8/abg;->getParent()Lc8/scg;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 625
    invoke-virtual {p0}, Lc8/abg;->getParent()Lc8/scg;

    move-result-object v1

    invoke-virtual {v1}, Lc8/scg;->ignoreFocus()V

    .line 627
    :cond_0
    invoke-virtual {v0}, Lc8/peg;->requestFocus()Z

    .line 628
    invoke-virtual {v0, v2}, Lc8/peg;->setFocusable(Z)V

    .line 629
    invoke-virtual {v0, v2}, Lc8/peg;->setFocusableInTouchMode(Z)V

    .line 630
    invoke-direct {p0}, Lc8/abg;->showSoftKeyboard()Z

    .line 632
    :cond_1
    return-void
.end method

.method public getSelectionRange(Ljava/lang/String;)V
    .locals 7
    .param p1, "callbackId"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 679
    new-instance v2, Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 680
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .local v1, "hostView":Landroid/widget/EditText;
    if-eqz v1, :cond_1

    .line 681
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    .line 682
    .local v3, "start":I
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 684
    .local v0, "end":I
    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_0

    .line 686
    const/4 v3, 0x0

    .line 687
    const/4 v0, 0x0

    .line 690
    :cond_0
    const-string/jumbo v4, "selectionStart"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    const-string/jumbo v4, "selectionEnd"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    .end local v0    # "end":I
    .end local v3    # "start":I
    :cond_1
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v4

    invoke-virtual {p0}, Lc8/abg;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p1, v2, v6}, Lc8/ZWf;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 694
    return-void
.end method

.method protected getVerticalGravity()I
    .locals 1

    .prologue
    .line 136
    const/16 v0, 0x10

    return v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lc8/abg;->initComponentHostView(Landroid/content/Context;)Lc8/peg;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lc8/peg;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 84
    new-instance v0, Lc8/peg;

    invoke-direct {v0, p1}, Lc8/peg;-><init>(Landroid/content/Context;)V

    .line 85
    .local v0, "inputView":Lc8/peg;
    invoke-virtual {p0, v0}, Lc8/abg;->appleStyleAfterCreated(Lc8/peg;)V

    .line 86
    return-object v0
.end method

.method protected isConsumeTouch()Z
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lc8/abg;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onHostViewInitialized(Landroid/view/View;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 61
    check-cast p1, Lc8/peg;

    .end local p1    # "x0":Landroid/view/View;
    invoke-virtual {p0, p1}, Lc8/abg;->onHostViewInitialized(Lc8/peg;)V

    return-void
.end method

.method protected onHostViewInitialized(Lc8/peg;)V
    .locals 1
    .param p1, "host"    # Lc8/peg;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lc8/tbg;->onHostViewInitialized(Landroid/view/View;)V

    .line 92
    new-instance v0, Lc8/Qag;

    invoke-direct {v0, p0}, Lc8/Qag;-><init>(Lc8/abg;)V

    invoke-virtual {p0, v0}, Lc8/abg;->addFocusChangeListener(Lc8/rbg;)V

    .line 102
    invoke-direct {p0, p1}, Lc8/abg;->addKeyboardListener(Lc8/peg;)V

    .line 103
    return-void
.end method

.method public performOnChange(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-virtual {p0}, Lc8/abg;->getDomObject()Lc8/qYf;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lc8/abg;->getDomObject()Lc8/qYf;

    move-result-object v1

    invoke-interface {v1}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {p0}, Lc8/abg;->getDomObject()Lc8/qYf;

    move-result-object v1

    invoke-interface {v1}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    const-string/jumbo v2, "change"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "change"

    .line 283
    .local v0, "event":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0, p1}, Lc8/abg;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .end local v0    # "event":Ljava/lang/String;
    :cond_0
    return-void

    .line 282
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutofocus(Z)V
    .locals 3
    .param p1, "autofocus"    # Z
    .annotation runtime Lc8/vbg;
        name = "autofocus"
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 427
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 440
    :goto_0
    return-void

    .line 430
    :cond_0
    iput-boolean p1, p0, Lc8/abg;->mAutoFocus:Z

    .line 431
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 432
    .local v0, "inputView":Landroid/widget/EditText;
    iget-boolean v1, p0, Lc8/abg;->mAutoFocus:Z

    if-eqz v1, :cond_1

    .line 433
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 434
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 435
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 436
    invoke-direct {p0}, Lc8/abg;->showSoftKeyboard()Z

    goto :goto_0

    .line 438
    :cond_1
    invoke-direct {p0}, Lc8/abg;->hideSoftKeyboard()V

    goto :goto_0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "color"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "color"
    .end annotation

    .prologue
    .line 456
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    invoke-static {p1}, Lc8/Bgg;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 458
    .local v0, "colorInt":I
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 459
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/peg;

    invoke-virtual {v1, v0}, Lc8/peg;->setTextColor(I)V

    .line 462
    .end local v0    # "colorInt":I
    :cond_0
    return-void
.end method

.method public setFontSize(Ljava/lang/String;)V
    .locals 4
    .param p1, "fontSize"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "fontSize"
    .end annotation

    .prologue
    .line 466
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 467
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 468
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "fontSize"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/peg;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lc8/abg;->getInstance()Lc8/nVf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v3

    invoke-static {v0, v3}, Lc8/PYf;->getFontSize(Ljava/util/Map;I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lc8/peg;->setTextSize(IF)V

    .line 471
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public setLines(I)V
    .locals 1
    .param p1, "lines"    # I
    .annotation runtime Lc8/vbg;
        name = "lines"
    .end annotation

    .prologue
    .line 491
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 495
    :goto_0
    return-void

    .line 494
    :cond_0
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/peg;

    invoke-virtual {v0, p1}, Lc8/peg;->setLines(I)V

    goto :goto_0
.end method

.method public setMax(Ljava/lang/String;)V
    .locals 0
    .param p1, "max"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "max"
    .end annotation

    .prologue
    .line 560
    iput-object p1, p0, Lc8/abg;->mMax:Ljava/lang/String;

    .line 561
    return-void
.end method

.method public setMaxLength(I)V
    .locals 4
    .param p1, "maxLength"    # I
    .annotation runtime Lc8/vbg;
        name = "maxLength"
    .end annotation

    .prologue
    .line 503
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 507
    :goto_0
    return-void

    .line 506
    :cond_0
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/peg;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lc8/peg;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method public setMaxlength(I)V
    .locals 0
    .param p1, "maxLength"    # I
    .annotation runtime Lc8/vbg;
        name = "maxlength"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 516
    invoke-virtual {p0, p1}, Lc8/abg;->setMaxLength(I)V

    .line 517
    return-void
.end method

.method public setMin(Ljava/lang/String;)V
    .locals 0
    .param p1, "min"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "min"
    .end annotation

    .prologue
    .line 565
    iput-object p1, p0, Lc8/abg;->mMin:Ljava/lang/String;

    .line 566
    return-void
.end method

.method public setPlaceholder(Ljava/lang/String;)V
    .locals 1
    .param p1, "placeholder"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "placeholder"
    .end annotation

    .prologue
    .line 394
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/peg;

    invoke-virtual {v0, p1}, Lc8/peg;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setPlaceholderColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "color"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "placeholderColor"
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    invoke-static {p1}, Lc8/Bgg;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 404
    .local v0, "colorInt":I
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 405
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/peg;

    invoke-virtual {v1, v0}, Lc8/peg;->setHintTextColor(I)V

    .line 408
    .end local v0    # "colorInt":I
    :cond_0
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 13
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    .line 289
    const/4 v11, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v11, :pswitch_data_0

    .line 355
    invoke-super {p0, p1, p2}, Lc8/tbg;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v11

    :goto_1
    return v11

    .line 289
    :sswitch_0
    const-string/jumbo v12, "placeholder"

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v12, "placeholderColor"

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v12, "type"

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v12, "autofocus"

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v12, "color"

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v12, "fontSize"

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v12, "textAlign"

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v12, "singleline"

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v12, "lines"

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v11, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v12, "maxLength"

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v11, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v12, "maxlength"

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v11, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v12, "max"

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v11, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v12, "min"

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v11, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v12, "returnKeyType"

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v11, 0xd

    goto/16 :goto_0

    .line 291
    :pswitch_0
    const/4 v11, 0x0

    invoke-static {p2, v11}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 292
    .local v6, "placeholder":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 293
    invoke-virtual {p0, v6}, Lc8/abg;->setPlaceholder(Ljava/lang/String;)V

    .line 294
    :cond_1
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 296
    .end local v6    # "placeholder":Ljava/lang/String;
    :pswitch_1
    const/4 v11, 0x0

    invoke-static {p2, v11}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 297
    .local v7, "placeholder_color":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 298
    invoke-virtual {p0, v7}, Lc8/abg;->setPlaceholderColor(Ljava/lang/String;)V

    .line 299
    :cond_2
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 301
    .end local v7    # "placeholder_color":Ljava/lang/String;
    :pswitch_2
    const/4 v11, 0x0

    invoke-static {p2, v11}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, "input_type":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 303
    invoke-virtual {p0, v2}, Lc8/abg;->setType(Ljava/lang/String;)V

    .line 304
    :cond_3
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 306
    .end local v2    # "input_type":Ljava/lang/String;
    :pswitch_3
    const/4 v11, 0x0

    invoke-static {p2, v11}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    .line 307
    .local v8, "result":Ljava/lang/Boolean;
    if-eqz v8, :cond_4

    .line 308
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {p0, v11}, Lc8/abg;->setAutofocus(Z)V

    .line 309
    :cond_4
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 311
    .end local v8    # "result":Ljava/lang/Boolean;
    :pswitch_4
    const/4 v11, 0x0

    invoke-static {p2, v11}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "color":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 313
    invoke-virtual {p0, v0}, Lc8/abg;->setColor(Ljava/lang/String;)V

    .line 314
    :cond_5
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 316
    .end local v0    # "color":Ljava/lang/String;
    :pswitch_5
    const/4 v11, 0x0

    invoke-static {p2, v11}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "fontsize":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 318
    invoke-virtual {p0, v1}, Lc8/abg;->setFontSize(Ljava/lang/String;)V

    .line 319
    :cond_6
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 321
    .end local v1    # "fontsize":Ljava/lang/String;
    :pswitch_6
    const/4 v11, 0x0

    invoke-static {p2, v11}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 322
    .local v10, "text_align":Ljava/lang/String;
    if-eqz v10, :cond_7

    .line 323
    invoke-virtual {p0, v10}, Lc8/abg;->setTextAlign(Ljava/lang/String;)V

    .line 324
    :cond_7
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 326
    .end local v10    # "text_align":Ljava/lang/String;
    :pswitch_7
    const/4 v11, 0x0

    invoke-static {p2, v11}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v9

    .line 327
    .local v9, "singLineResult":Ljava/lang/Boolean;
    if-eqz v9, :cond_8

    .line 328
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {p0, v11}, Lc8/abg;->setSingleLine(Z)V

    .line 329
    :cond_8
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 331
    .end local v9    # "singLineResult":Ljava/lang/Boolean;
    :pswitch_8
    const/4 v11, 0x0

    invoke-static {p2, v11}, Lc8/Dgg;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    .line 332
    .local v3, "lines":Ljava/lang/Integer;
    if-eqz v3, :cond_9

    .line 333
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p0, v11}, Lc8/abg;->setLines(I)V

    .line 334
    :cond_9
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 336
    .end local v3    # "lines":Ljava/lang/Integer;
    :pswitch_9
    const/4 v11, 0x0

    invoke-static {p2, v11}, Lc8/Dgg;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    .line 337
    .local v5, "maxlength":Ljava/lang/Integer;
    if-eqz v5, :cond_a

    .line 338
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p0, v11}, Lc8/abg;->setMaxLength(I)V

    .line 339
    :cond_a
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 341
    .end local v5    # "maxlength":Ljava/lang/Integer;
    :pswitch_a
    const/4 v11, 0x0

    invoke-static {p2, v11}, Lc8/Dgg;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    .line 342
    .local v4, "maxLength":Ljava/lang/Integer;
    if-eqz v4, :cond_b

    .line 343
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p0, v11}, Lc8/abg;->setMaxLength(I)V

    .line 344
    :cond_b
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 346
    .end local v4    # "maxLength":Ljava/lang/Integer;
    :pswitch_b
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lc8/abg;->setMax(Ljava/lang/String;)V

    .line 347
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 349
    :pswitch_c
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lc8/abg;->setMin(Ljava/lang/String;)V

    .line 350
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 352
    :pswitch_d
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lc8/abg;->setReturnKeyType(Ljava/lang/String;)V

    .line 353
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 289
    :sswitch_data_0
    .sparse-switch
        -0x5dfbd650 -> :sswitch_1
        -0x3f826a28 -> :sswitch_6
        -0x2f2bce96 -> :sswitch_9
        0x1a564 -> :sswitch_b
        0x1a652 -> :sswitch_c
        0x368f3a -> :sswitch_2
        0x5a72f63 -> :sswitch_4
        0x6234eff -> :sswitch_8
        0x76f454a -> :sswitch_a
        0x15caa0f0 -> :sswitch_5
        0x23a88573 -> :sswitch_0
        0x367fd03c -> :sswitch_7
        0x38797ee9 -> :sswitch_d
        0x6365ac89 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public setReturnKeyType(Ljava/lang/String;)V
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "returnKeyType"
    .end annotation

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 360
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 363
    :cond_0
    iput-object p1, p0, Lc8/abg;->mReturnKeyType:Ljava/lang/String;

    .line 364
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 388
    :goto_2
    invoke-virtual {p0}, Lc8/abg;->blur()V

    .line 389
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/peg;

    iget v1, p0, Lc8/abg;->mEditorAction:I

    invoke-virtual {v0, v1}, Lc8/peg;->setImeOptions(I)V

    goto :goto_0

    .line 364
    :sswitch_0
    const-string/jumbo v6, "default"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v6, "go"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v6, "next"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v6, "search"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v6, "send"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v6, "done"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v5

    goto :goto_1

    .line 366
    :pswitch_0
    iput v1, p0, Lc8/abg;->mEditorAction:I

    goto :goto_2

    .line 369
    :pswitch_1
    iput v2, p0, Lc8/abg;->mEditorAction:I

    goto :goto_2

    .line 372
    :pswitch_2
    iput v5, p0, Lc8/abg;->mEditorAction:I

    goto :goto_2

    .line 375
    :pswitch_3
    iput v3, p0, Lc8/abg;->mEditorAction:I

    goto :goto_2

    .line 378
    :pswitch_4
    iput v4, p0, Lc8/abg;->mEditorAction:I

    goto :goto_2

    .line 381
    :pswitch_5
    const/4 v0, 0x6

    iput v0, p0, Lc8/abg;->mEditorAction:I

    goto :goto_2

    .line 364
    nop

    :sswitch_data_0
    .sparse-switch
        -0x36059a58 -> :sswitch_3
        0xce8 -> :sswitch_1
        0x2f2382 -> :sswitch_5
        0x338af3 -> :sswitch_2
        0x35cf88 -> :sswitch_4
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setSelectionRange(II)V
    .locals 3
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 666
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .local v0, "hostView":Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lc8/peg;

    invoke-virtual {v2}, Lc8/peg;->length()I

    move-result v1

    .line 668
    .local v1, "length":I
    if-gt p1, v1, :cond_0

    if-le p2, v1, :cond_1

    .line 674
    .end local v1    # "length":I
    :cond_0
    :goto_0
    return-void

    .line 671
    .restart local v1    # "length":I
    :cond_1
    invoke-virtual {p0}, Lc8/abg;->focus()V

    .line 672
    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0
.end method

.method public setSingleLine(Z)V
    .locals 1
    .param p1, "singleLine"    # Z
    .annotation runtime Lc8/vbg;
        name = "singleline"
    .end annotation

    .prologue
    .line 483
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 487
    :goto_0
    return-void

    .line 486
    :cond_0
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/peg;

    invoke-virtual {v0, p1}, Lc8/peg;->setSingleLine(Z)V

    goto :goto_0
.end method

.method public setTextAlign(Ljava/lang/String;)V
    .locals 3
    .param p1, "textAlign"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "textAlign"
    .end annotation

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lc8/abg;->getTextAlign(Ljava/lang/String;)I

    move-result v0

    .line 476
    .local v0, "align":I
    if-lez v0, :cond_0

    .line 477
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/peg;

    invoke-virtual {p0}, Lc8/abg;->getVerticalGravity()I

    move-result v2

    or-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lc8/peg;->setGravity(I)V

    .line 479
    :cond_0
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "type"
    .end annotation

    .prologue
    .line 412
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    iput-object p1, p0, Lc8/abg;->mType:Ljava/lang/String;

    .line 416
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lc8/abg;->mType:Ljava/lang/String;

    invoke-direct {p0, v1}, Lc8/abg;->getInputType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 417
    iget-object v1, p0, Lc8/abg;->mType:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 420
    :pswitch_0
    invoke-direct {p0}, Lc8/abg;->applyOnClickListener()V

    goto :goto_0

    .line 417
    :sswitch_0
    const-string/jumbo v2, "date"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x2eefae -> :sswitch_0
        0x3652cd -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "value"
    .end annotation

    .prologue
    .line 445
    invoke-virtual {p0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/peg;

    .local v0, "view":Lc8/peg;
    if-nez v0, :cond_0

    .line 452
    :goto_0
    return-void

    .line 449
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/abg;->mIgnoreNextOnInputEvent:Z

    .line 450
    invoke-virtual {v0, p1}, Lc8/peg;->setText(Ljava/lang/CharSequence;)V

    .line 451
    if-nez p1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lc8/peg;->setSelection(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1
.end method
