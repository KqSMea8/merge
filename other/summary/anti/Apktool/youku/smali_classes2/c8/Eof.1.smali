.class public Lc8/Eof;
.super Ljava/lang/Object;
.source "AlibcToastWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-static {p0}, Lc8/Eof;->createToast(Landroid/content/Context;)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method private static checkIfFirstTime(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    if-nez p0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v2

    .line 48
    :cond_1
    const-string/jumbo v4, "alibc_toast"

    invoke-virtual {p0, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 49
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "notForstTime"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 50
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "notForstTime"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v2, v3

    .line 53
    goto :goto_0
.end method

.method private static createToast(Landroid/content/Context;)Landroid/widget/Toast;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 35
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/youku/phone/R$layout;->alibc_toast_layout:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 36
    .local v2, "view":Landroid/view/View;
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 37
    .local v1, "toast":Landroid/widget/Toast;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 38
    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 39
    return-object v1
.end method

.method public static showInFirstTime(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    if-eqz p0, :cond_0

    invoke-static {p0}, Lc8/Eof;->checkIfFirstTime(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lc8/Dof;

    invoke-direct {v1, p0}, Lc8/Dof;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method
