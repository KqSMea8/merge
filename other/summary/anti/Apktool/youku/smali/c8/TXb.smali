.class public Lc8/TXb;
.super Ljava/lang/Object;
.source "AppLayer.java"


# static fields
.field public static final LENGTH_ALWAYS:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private animations:I

.field private handler:Landroid/os/Handler;

.field private hide:Ljava/lang/reflect/Method;

.field private hideRunnable:Ljava/lang/Runnable;

.field private isShow:Z

.field private mContext:Landroid/content/Context;

.field private mDuration:I

.field private mTN:Ljava/lang/Object;

.field private params:Landroid/view/WindowManager$LayoutParams;

.field private show:Ljava/lang/reflect/Method;

.field private toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lc8/TXb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/TXb;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v2, p0, Lc8/TXb;->mDuration:I

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lc8/TXb;->animations:I

    .line 35
    iput-boolean v2, p0, Lc8/TXb;->isShow:Z

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lc8/TXb;->handler:Landroid/os/Handler;

    .line 55
    new-instance v0, Lc8/SXb;

    invoke-direct {v0, p0}, Lc8/SXb;-><init>(Lc8/TXb;)V

    iput-object v0, p0, Lc8/TXb;->hideRunnable:Ljava/lang/Runnable;

    .line 46
    iput-object p1, p0, Lc8/TXb;->mContext:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lc8/TXb;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Lc8/TXb;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/TXb;->toast:Landroid/widget/Toast;

    .line 50
    :cond_0
    iput v2, p0, Lc8/TXb;->mDuration:I

    .line 52
    const/high16 v0, 0x1030000

    iput v0, p0, Lc8/TXb;->animations:I

    .line 53
    return-void
.end method

.method private static _1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private initTN()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 104
    :try_start_0
    iget-object v4, p0, Lc8/TXb;->toast:Landroid/widget/Toast;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "mTN"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 105
    .local v1, "tnField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 106
    iget-object v4, p0, Lc8/TXb;->toast:Landroid/widget/Toast;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lc8/TXb;->mTN:Ljava/lang/Object;

    .line 107
    iget-object v4, p0, Lc8/TXb;->mTN:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "show"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lc8/TXb;->show:Ljava/lang/reflect/Method;

    .line 108
    iget-object v4, p0, Lc8/TXb;->mTN:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "hide"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lc8/TXb;->hide:Ljava/lang/reflect/Method;

    .line 110
    iget-object v4, p0, Lc8/TXb;->mTN:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "mParams"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 111
    .local v3, "tnParamsField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 113
    iget-object v4, p0, Lc8/TXb;->mTN:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    iput-object v4, p0, Lc8/TXb;->params:Landroid/view/WindowManager$LayoutParams;

    .line 117
    iget-object v4, p0, Lc8/TXb;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x38

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 121
    iget v4, p0, Lc8/TXb;->animations:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 122
    iget-object v4, p0, Lc8/TXb;->params:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lc8/TXb;->animations:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 126
    :cond_0
    iget-object v4, p0, Lc8/TXb;->mTN:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "mNextView"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 127
    .local v2, "tnNextViewField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 128
    iget-object v4, p0, Lc8/TXb;->mTN:Ljava/lang/Object;

    iget-object v5, p0, Lc8/TXb;->toast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v1    # "tnField":Ljava/lang/reflect/Field;
    .end local v2    # "tnNextViewField":Ljava/lang/reflect/Field;
    .end local v3    # "tnParamsField":Ljava/lang/reflect/Field;
    :goto_0
    iget-object v4, p0, Lc8/TXb;->toast:Landroid/widget/Toast;

    const/16 v5, 0x77

    invoke-virtual {v4, v5, v7, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 134
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 88
    iget-boolean v1, p0, Lc8/TXb;->isShow:Z

    if-nez v1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string/jumbo v1, "%s.hide"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lc8/TXb;->TAG:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    :try_start_0
    iget-object v1, p0, Lc8/TXb;->hide:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lc8/TXb;->mTN:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/TXb;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_1
    iput-boolean v4, p0, Lc8/TXb;->isShow:Z

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lc8/TXb;->isShow:Z

    return v0
.end method

.method public setView(Lc8/LXb;)V
    .locals 1
    .param p1, "view"    # Lc8/LXb;

    .prologue
    .line 99
    iget-object v0, p0, Lc8/TXb;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 100
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 63
    iget-boolean v1, p0, Lc8/TXb;->isShow:Z

    if-eqz v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v1, p0, Lc8/TXb;->toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    .line 65
    const-string/jumbo v1, "%s.show error."

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Lc8/TXb;->TAG:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 68
    :cond_2
    const-string/jumbo v1, "%s.show"

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Lc8/TXb;->TAG:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-direct {p0}, Lc8/TXb;->initTN()V

    .line 71
    :try_start_0
    iget-object v1, p0, Lc8/TXb;->show:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lc8/TXb;->mTN:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/TXb;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_1
    iput-boolean v5, p0, Lc8/TXb;->isShow:Z

    .line 77
    iget v1, p0, Lc8/TXb;->mDuration:I

    if-lez v1, :cond_0

    .line 78
    iget-object v1, p0, Lc8/TXb;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lc8/TXb;->hideRunnable:Ljava/lang/Runnable;

    iget v3, p0, Lc8/TXb;->mDuration:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
