.class public Lc8/wef;
.super Landroid/os/AsyncTask;
.source "TemplateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/xef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TemplateLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lc8/Aef;",
        ">;"
    }
.end annotation


# instance fields
.field private request:Lc8/zef;

.field private final templateManagerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/xef;",
            ">;"
        }
    .end annotation
.end field

.field private toJSONObject:Z


# direct methods
.method public constructor <init>(Lc8/xef;)V
    .locals 1
    .param p1, "templateManager"    # Lc8/xef;

    .prologue
    .line 371
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/wef;->toJSONObject:Z

    .line 372
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/wef;->templateManagerRef:Ljava/lang/ref/WeakReference;

    .line 373
    return-void
.end method

.method static synthetic access$002(Lc8/wef;Lc8/zef;)Lc8/zef;
    .locals 0
    .param p0, "x0"    # Lc8/wef;
    .param p1, "x1"    # Lc8/zef;

    .prologue
    .line 362
    iput-object p1, p0, Lc8/wef;->request:Lc8/zef;

    return-object p1
.end method

.method static synthetic access$102(Lc8/wef;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/wef;
    .param p1, "x1"    # Z

    .prologue
    .line 362
    iput-boolean p1, p0, Lc8/wef;->toJSONObject:Z

    return p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lc8/Aef;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 377
    iget-object v1, p0, Lc8/wef;->templateManagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/xef;

    .line 378
    .local v0, "templateManager":Lc8/xef;
    iget-object v1, p0, Lc8/wef;->request:Lc8/zef;

    iget-boolean v2, p0, Lc8/wef;->toJSONObject:Z

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lc8/xef;->access$400(Lc8/xef;Lc8/zef;ZZ)Lc8/Aef;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 362
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/wef;->doInBackground([Ljava/lang/Void;)Lc8/Aef;

    move-result-object v0

    return-object v0
.end method
