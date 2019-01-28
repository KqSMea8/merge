.class public Lc8/Kpb;
.super Ljava/lang/Object;
.source "WXTabHeader.java"

# interfaces
.implements Lc8/Gvb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Lpb;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Lpb;


# direct methods
.method constructor <init>(Lc8/Lpb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Lpb;

    .prologue
    .line 111
    iput-object p1, p0, Lc8/Kpb;->this$0:Lc8/Lpb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnClick(Lc8/Lvb;)V
    .locals 4
    .param p1, "item"    # Lc8/Lvb;

    .prologue
    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 116
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lc8/Lvb;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string/jumbo v1, "updateAttrs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "click:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lc8/Lvb;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lc8/Kpb;->this$0:Lc8/Lpb;

    invoke-virtual {v1}, Lc8/Lpb;->getInstance()Lc8/nVf;

    move-result-object v1

    iget-object v2, p0, Lc8/Kpb;->this$0:Lc8/Lpb;

    invoke-virtual {v2}, Lc8/Lpb;->getRef()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "select"

    invoke-virtual {v1, v2, v3, v0}, Lc8/nVf;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 119
    return-void
.end method
