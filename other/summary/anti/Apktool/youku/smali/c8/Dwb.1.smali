.class public Lc8/Dwb;
.super Lc8/Txb;
.source "PackageRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gwb;->getPackagesParallel(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Txb",
        "<",
        "Lc8/lwb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Gwb;


# direct methods
.method constructor <init>(Lc8/Gwb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Gwb;

    .prologue
    .line 92
    iput-object p1, p0, Lc8/Dwb;->this$0:Lc8/Gwb;

    invoke-direct {p0}, Lc8/Txb;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Lc8/lwb;)V
    .locals 5
    .param p1, "item"    # Lc8/lwb;

    .prologue
    .line 95
    iget-object v1, p1, Lc8/lwb;->group:Ljava/lang/String;

    .line 96
    .local v1, "group":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 97
    .local v0, "depCombo":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string/jumbo v2, "??"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    invoke-static {}, Lc8/nyb;->make()Lc8/nyb;

    move-result-object v2

    new-instance v3, Lc8/Cwb;

    iget-object v4, p1, Lc8/lwb;->depInfos:Ljava/util/Vector;

    invoke-direct {v3, p0, v4, p1, v0}, Lc8/Cwb;-><init>(Lc8/Dwb;Ljava/util/List;Lc8/lwb;Ljava/lang/StringBuffer;)V

    .line 100
    invoke-virtual {v2, v3}, Lc8/nyb;->branch(Lc8/Oxb;)Lc8/nyb;

    move-result-object v2

    new-instance v3, Lc8/Bwb;

    invoke-direct {v3, p0, v0, p1}, Lc8/Bwb;-><init>(Lc8/Dwb;Ljava/lang/StringBuffer;Lc8/lwb;)V

    .line 129
    invoke-virtual {v2, v3}, Lc8/nyb;->next(Lc8/Hxb;)Lc8/nyb;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Lc8/nyb;->flow()Lc8/Zxb;

    .line 141
    return-void
.end method

.method public bridge synthetic end(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 92
    check-cast p1, Lc8/lwb;

    invoke-virtual {p0, p1}, Lc8/Dwb;->end(Lc8/lwb;)V

    return-void
.end method
