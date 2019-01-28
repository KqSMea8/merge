.class public Lc8/tLd;
.super Ljava/lang/Object;
.source "Tracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/wLd;->resumeSessionChecking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/wLd;

.field final synthetic val$session:Lc8/nLd;


# direct methods
.method constructor <init>(Lc8/wLd;Lc8/nLd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/wLd;

    .prologue
    .line 43
    iput-object p1, p0, Lc8/tLd;->this$0:Lc8/wLd;

    iput-object p2, p0, Lc8/tLd;->val$session:Lc8/nLd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lc8/tLd;->val$session:Lc8/nLd;

    invoke-virtual {v0}, Lc8/nLd;->checkAndUpdateSession()V

    .line 47
    return-void
.end method
