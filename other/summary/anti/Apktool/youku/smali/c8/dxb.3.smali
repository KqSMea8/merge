.class public Lc8/dxb;
.super Lc8/Swb;
.source "MtopTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/exb;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/exb;


# direct methods
.method constructor <init>(Lc8/exb;)V
    .locals 0
    .param p1, "this$1"    # Lc8/exb;

    .prologue
    .line 200
    iput-object p1, p0, Lc8/dxb;->this$1:Lc8/exb;

    invoke-direct {p0}, Lc8/Swb;-><init>()V

    return-void
.end method


# virtual methods
.method public contentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    const-string/jumbo v1, "Content-Type"

    invoke-virtual {p0, v1}, Lc8/dxb;->firstHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "type":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 205
    const-string/jumbo v0, "application/json"

    .line 207
    :cond_0
    return-object v0
.end method
