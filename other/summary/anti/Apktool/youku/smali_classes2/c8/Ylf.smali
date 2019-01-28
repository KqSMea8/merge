.class public Lc8/Ylf;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Xlf;
    }
.end annotation


# instance fields
.field private volatile a:Lc8/kmf;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method synthetic constructor <init>(Lc8/Wlf;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lc8/Ylf;-><init>()V

    return-void
.end method

.method public static getInstance()Lc8/Ylf;
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lc8/Xlf;->a()Lc8/Ylf;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getRequestQueue()Lc8/kmf;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lc8/Ylf;->a:Lc8/kmf;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lc8/Ylf;->a:Lc8/kmf;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lc8/kmf;

    invoke-direct {v0, p1}, Lc8/kmf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/Ylf;->a:Lc8/kmf;

    .line 34
    iget-object v0, p0, Lc8/Ylf;->a:Lc8/kmf;

    invoke-virtual {v0}, Lc8/kmf;->start()V

    .line 36
    :cond_0
    return-void
.end method
