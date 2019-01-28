.class public Lc8/NHd;
.super Ljava/lang/Object;
.source "ANRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/VHd;->deliverResponse(Lc8/WHd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/VHd;

.field final synthetic val$response:Lc8/WHd;


# direct methods
.method constructor <init>(Lc8/VHd;Lc8/WHd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/VHd;

    .prologue
    .line 627
    .local p0, "this":Lc8/NHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$6;"
    iput-object p1, p0, Lc8/NHd;->this$0:Lc8/VHd;

    iput-object p2, p0, Lc8/NHd;->val$response:Lc8/WHd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 629
    .local p0, "this":Lc8/NHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$6;"
    iget-object v0, p0, Lc8/NHd;->this$0:Lc8/VHd;

    iget-object v1, p0, Lc8/NHd;->val$response:Lc8/WHd;

    invoke-static {v0, v1}, Lc8/VHd;->access$5800(Lc8/VHd;Lc8/WHd;)V

    .line 630
    return-void
.end method
