.class public Lc8/hTe;
.super Lc8/oTe;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nTe;->newJournalWriter()Lc8/ZVp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lc8/nTe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 302
    const-class v0, Lc8/nTe;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lc8/hTe;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lc8/nTe;Lc8/tWp;)V
    .locals 0
    .param p1, "this$0"    # Lc8/nTe;
    .param p2, "delegate"    # Lc8/tWp;

    .prologue
    .line 302
    iput-object p1, p0, Lc8/hTe;->this$0:Lc8/nTe;

    invoke-direct {p0, p2}, Lc8/oTe;-><init>(Lc8/tWp;)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 304
    sget-boolean v0, Lc8/hTe;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/hTe;->this$0:Lc8/nTe;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 305
    :cond_0
    iget-object v0, p0, Lc8/hTe;->this$0:Lc8/nTe;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc8/nTe;->access$602(Lc8/nTe;Z)Z

    .line 306
    return-void
.end method
