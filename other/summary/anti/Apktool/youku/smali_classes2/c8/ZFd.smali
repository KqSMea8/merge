.class public final Lc8/ZFd;
.super Ljava/lang/Object;
.source "SDKInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/aGd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/ZFd;->e:Z

    const-string/jumbo v0, "standard"

    iput-object v0, p0, Lc8/ZFd;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lc8/ZFd;->g:[Ljava/lang/String;

    iput-object p2, p0, Lc8/ZFd;->a:Ljava/lang/String;

    iput-object p2, p0, Lc8/ZFd;->b:Ljava/lang/String;

    iput-object p3, p0, Lc8/ZFd;->d:Ljava/lang/String;

    iput-object p1, p0, Lc8/ZFd;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lc8/ZFd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/ZFd;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lc8/ZFd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/ZFd;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lc8/ZFd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/ZFd;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lc8/ZFd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/ZFd;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lc8/ZFd;)Z
    .locals 1

    iget-boolean v0, p0, Lc8/ZFd;->e:Z

    return v0
.end method

.method static synthetic f(Lc8/ZFd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/ZFd;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lc8/ZFd;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/ZFd;->g:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lc8/ZFd;
    .locals 0

    iput-object p1, p0, Lc8/ZFd;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final a([Ljava/lang/String;)Lc8/ZFd;
    .locals 1

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lc8/ZFd;->g:[Ljava/lang/String;

    return-object p0
.end method

.method public final a()Lc8/aGd;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/j;
        }
    .end annotation

    iget-object v0, p0, Lc8/ZFd;->g:[Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/j;

    const-string/jumbo v1, "sdk packages is null"

    invoke-direct {v0, v1}, Lcom/loc/j;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lc8/aGd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/aGd;-><init>(Lc8/ZFd;B)V

    return-object v0
.end method
