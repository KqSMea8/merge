.class public Lc8/Ydo;
.super Landroid/app/Dialog;
.source "LoadingView.java"


# static fields
.field protected static final FRESH_UI_MESSAGE_CODE:I = 0x110


# instance fields
.field private downloadStatus:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Lc8/Xdo;

    invoke-direct {v0, p0}, Lc8/Xdo;-><init>(Lc8/Ydo;)V

    iput-object v0, p0, Lc8/Ydo;->mHandler:Landroid/os/Handler;

    .line 31
    iput-object p1, p0, Lc8/Ydo;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 39
    new-instance v0, Lc8/Xdo;

    invoke-direct {v0, p0}, Lc8/Xdo;-><init>(Lc8/Ydo;)V

    iput-object v0, p0, Lc8/Ydo;->mHandler:Landroid/os/Handler;

    .line 36
    iput-object p1, p0, Lc8/Ydo;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lc8/Ydo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lc8/Ydo;

    .prologue
    .line 20
    iget-object v0, p0, Lc8/Ydo;->downloadStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method public static builder(Landroid/content/Context;Landroid/content/DialogInterface$OnCancelListener;)Lc8/Ydo;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const/4 v4, 0x0

    .line 85
    new-instance v0, Lc8/Ydo;

    sget v3, Lcom/youku/phone/R$style;->baseuikit_loading_pop_dialog_style:I

    invoke-direct {v0, p0, v3}, Lc8/Ydo;-><init>(Landroid/content/Context;I)V

    .line 86
    .local v0, "loadingView":Lc8/Ydo;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lc8/Ydo;->setCancelable(Z)V

    .line 87
    invoke-virtual {v0, v4}, Lc8/Ydo;->setCanceledOnTouchOutside(Z)V

    .line 88
    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {v0, p1}, Lc8/Ydo;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 91
    :cond_0
    invoke-virtual {v0}, Lc8/Ydo;->show()V

    .line 92
    invoke-virtual {v0}, Lc8/Ydo;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 93
    .local v2, "win":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 94
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 95
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 96
    const/4 v3, -0x2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 97
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 98
    return-object v0
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/youku/phone/R$id;->download_status:I

    invoke-virtual {p0, v0}, Lc8/Ydo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/Ydo;->downloadStatus:Landroid/widget/TextView;

    .line 67
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/Ydo;->requestWindowFeature(I)Z

    .line 61
    sget v0, Lcom/youku/phone/R$layout;->baseuikit_loading_pop_layout:I

    invoke-virtual {p0, v0}, Lc8/Ydo;->setContentView(I)V

    .line 62
    invoke-direct {p0}, Lc8/Ydo;->initView()V

    .line 63
    return-void
.end method

.method public updateText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lc8/Ydo;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x110

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 75
    return-void
.end method
