.class public Lc8/uLd;
.super Ljava/lang/Object;
.source "Tracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/wLd;->track(Lc8/iLd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/wLd;

.field final synthetic val$event:Lc8/iLd;


# direct methods
.method constructor <init>(Lc8/wLd;Lc8/iLd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/wLd;

    .prologue
    .line 66
    iput-object p1, p0, Lc8/uLd;->this$0:Lc8/wLd;

    iput-object p2, p0, Lc8/uLd;->val$event:Lc8/iLd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lc8/uLd;->this$0:Lc8/wLd;

    iget-object v1, p0, Lc8/uLd;->val$event:Lc8/iLd;

    invoke-static {v0, v1}, Lc8/wLd;->access$001(Lc8/wLd;Lc8/iLd;)V

    .line 69
    return-void
.end method
