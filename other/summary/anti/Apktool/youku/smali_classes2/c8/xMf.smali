.class public Lc8/xMf;
.super Ljava/lang/Object;
.source "Lazy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private clazz:Ljava/lang/Class;

.field public got:Z

.field private instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 17
    .local p0, "this":Lc8/xMf;, "Lcom/taobao/tao/purchase/inject/Lazy<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lc8/xMf;->clazz:Ljava/lang/Class;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    .local p0, "this":Lc8/xMf;, "Lcom/taobao/tao/purchase/inject/Lazy<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lc8/xMf;->name:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lc8/xMf;, "Lcom/taobao/tao/purchase/inject/Lazy<TT;>;"
    iget-boolean v0, p0, Lc8/xMf;->got:Z

    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lc8/xMf;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lc8/xMf;->name:Ljava/lang/String;

    invoke-static {v0}, Lc8/wMf;->getInjectObjectByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/xMf;->instance:Ljava/lang/Object;

    .line 29
    :goto_0
    iget-object v0, p0, Lc8/xMf;->instance:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/xMf;->got:Z

    .line 33
    :cond_0
    iget-object v0, p0, Lc8/xMf;->instance:Ljava/lang/Object;

    return-object v0

    .line 26
    :cond_1
    iget-object v0, p0, Lc8/xMf;->clazz:Ljava/lang/Class;

    invoke-static {v0}, Lc8/wMf;->getInjectObjectByClass(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/xMf;->instance:Ljava/lang/Object;

    goto :goto_0
.end method
