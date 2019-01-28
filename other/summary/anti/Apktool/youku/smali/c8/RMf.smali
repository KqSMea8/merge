.class public final Lc8/RMf;
.super Ljava/lang/Object;
.source "MtopJSBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/YMf;->sendMtopRequest(Ljava/util/Map;Lc8/AMf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$jsListener:Lc8/VMf;


# direct methods
.method constructor <init>(Lc8/VMf;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lc8/RMf;->val$jsListener:Lc8/VMf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lc8/RMf;->val$jsListener:Lc8/VMf;

    invoke-virtual {v0}, Lc8/VMf;->onTimeOut()V

    .line 182
    return-void
.end method
