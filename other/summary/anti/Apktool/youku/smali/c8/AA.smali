.class public Lc8/AA;
.super Ljava/lang/Object;
.source "KernalBundleArchive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/BA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KernalBundleRelease"
.end annotation


# instance fields
.field private mBundlereleaser:Lc8/KA;

.field final synthetic this$0:Lc8/BA;


# direct methods
.method public constructor <init>(Lc8/BA;Ljava/io/File;Z)V
    .locals 1
    .param p1, "this$0"    # Lc8/BA;
    .param p2, "dir"    # Ljava/io/File;
    .param p3, "hasReleasedBefore"    # Z

    .prologue
    .line 437
    iput-object p1, p0, Lc8/AA;->this$0:Lc8/BA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    new-instance v0, Lc8/KA;

    invoke-direct {v0, p2, p3}, Lc8/KA;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lc8/AA;->mBundlereleaser:Lc8/KA;

    .line 439
    return-void
.end method

.method static synthetic access$100(Lc8/AA;)Lc8/KA;
    .locals 1
    .param p0, "x0"    # Lc8/AA;

    .prologue
    .line 435
    iget-object v0, p0, Lc8/AA;->mBundlereleaser:Lc8/KA;

    return-object v0
.end method


# virtual methods
.method public release(Ljava/io/File;Z)Z
    .locals 7
    .param p1, "bundleFile"    # Ljava/io/File;
    .param p2, "start"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 442
    new-array v0, v1, [Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v6

    .line 443
    .local v0, "success":[Ljava/lang/Boolean;
    iget-object v1, p0, Lc8/AA;->mBundlereleaser:Lc8/KA;

    new-instance v2, Lc8/zA;

    invoke-direct {v2, p0, v0}, Lc8/zA;-><init>(Lc8/AA;[Ljava/lang/Boolean;)V

    invoke-virtual {v1, v2, p1, p2}, Lc8/KA;->release(Lc8/JA;Ljava/io/File;Z)V

    .line 464
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 465
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 467
    :cond_0
    aget-object v1, v0, v6

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method
