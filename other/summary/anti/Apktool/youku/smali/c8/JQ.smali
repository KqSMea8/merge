.class public Lc8/JQ;
.super Ljava/lang/Object;
.source "RecordEventMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/KQ;-><init>(Landroid/content/Context;Lc8/IQ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KQ;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lc8/KQ;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lc8/JQ;->this$0:Lc8/KQ;

    iput-object p2, p0, Lc8/JQ;->val$context:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lc8/JQ;->this$0:Lc8/KQ;

    iget-object v1, p0, Lc8/JQ;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lc8/aR;->fulfillTrackingInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/KQ;->access$0(Lc8/KQ;Ljava/util/Map;)V

    .line 40
    return-void
.end method
