.class public Lc8/QGo;
.super Ljava/lang/Object;
.source "VipToastUtils.java"


# static fields
.field public static mDuration:I

.field private static mHandler:Landroid/os/Handler;

.field public static mMsg:Ljava/lang/String;

.field public static showRunnable:Ljava/lang/Runnable;

.field private static toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    sput-object v1, Lc8/QGo;->toast:Landroid/widget/Toast;

    .line 12
    sput-object v1, Lc8/QGo;->mHandler:Landroid/os/Handler;

    .line 14
    const/4 v0, 0x1

    sput v0, Lc8/QGo;->mDuration:I

    .line 16
    sput-object v1, Lc8/QGo;->mMsg:Ljava/lang/String;

    .line 39
    new-instance v0, Lc8/PGo;

    invoke-direct {v0}, Lc8/PGo;-><init>()V

    sput-object v0, Lc8/QGo;->showRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lc8/QGo;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Toast;

    .prologue
    .line 8
    sput-object p0, Lc8/QGo;->toast:Landroid/widget/Toast;

    return-object p0
.end method

.method private static initToast(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    sget-object v0, Lc8/QGo;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    sput-object v0, Lc8/QGo;->mHandler:Landroid/os/Handler;

    new-instance v1, Lc8/OGo;

    invoke-direct {v1, p0}, Lc8/OGo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    :cond_0
    return-void
.end method

.method private static show(ILjava/lang/String;)V
    .locals 4
    .param p0, "duration"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 33
    sput p0, Lc8/QGo;->mDuration:I

    .line 34
    sput-object p1, Lc8/QGo;->mMsg:Ljava/lang/String;

    .line 35
    sget-object v0, Lc8/QGo;->mHandler:Landroid/os/Handler;

    sget-object v1, Lc8/QGo;->showRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 36
    sget-object v0, Lc8/QGo;->mHandler:Landroid/os/Handler;

    sget-object v1, Lc8/QGo;->showRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    return-void
.end method

.method public static showLongToast(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resID"    # I

    .prologue
    .line 62
    invoke-static {p0}, Lc8/QGo;->initToast(Landroid/content/Context;)V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/QGo;->show(ILjava/lang/String;)V

    .line 64
    return-void
.end method

.method public static showLongToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p0}, Lc8/QGo;->initToast(Landroid/content/Context;)V

    .line 68
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lc8/QGo;->show(ILjava/lang/String;)V

    .line 69
    return-void
.end method

.method public static showShortToast(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resID"    # I

    .prologue
    .line 52
    invoke-static {p0}, Lc8/QGo;->initToast(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/QGo;->show(ILjava/lang/String;)V

    .line 54
    return-void
.end method

.method public static showShortToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {p0}, Lc8/QGo;->initToast(Landroid/content/Context;)V

    .line 58
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lc8/QGo;->show(ILjava/lang/String;)V

    .line 59
    return-void
.end method
