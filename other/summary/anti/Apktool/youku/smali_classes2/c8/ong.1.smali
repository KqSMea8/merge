.class public Lc8/ong;
.super Ljava/lang/Object;
.source "AntImpl.java"

# interfaces
.implements Lc8/sng;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qng;->doInnerInit(Landroid/app/Application;Lcom/tmall/wireless/ant/lifecycle/FetchModel;Lc8/Rng;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/qng;


# direct methods
.method constructor <init>(Lc8/qng;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lc8/ong;->this$0:Lc8/qng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public conditionEvaluate(Ljava/lang/String;)Z
    .locals 1
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v0, p0, Lc8/ong;->this$0:Lc8/qng;

    iget-object v0, v0, Lc8/qng;->mAntEvaluator:Lc8/zng;

    invoke-virtual {v0, p1}, Lc8/zng;->evaluate(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getNativeCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lc8/Ung;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lc8/ong;->this$0:Lc8/qng;

    iget-object v0, v0, Lc8/qng;->mAntStore:Lc8/Ong;

    iget-object v0, v0, Lc8/Ong;->nativeCache:Ljava/util/Map;

    return-object v0
.end method

.method public getWebCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lc8/Ung;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lc8/ong;->this$0:Lc8/qng;

    iget-object v0, v0, Lc8/qng;->mAntStore:Lc8/Ong;

    iget-object v0, v0, Lc8/Ong;->webCache:Ljava/util/Map;

    return-object v0
.end method

.method public isGroupInWhitelist(Lc8/Vng;)Z
    .locals 1
    .param p1, "group"    # Lc8/Vng;

    .prologue
    .line 158
    iget-object v0, p0, Lc8/ong;->this$0:Lc8/qng;

    iget-object v0, v0, Lc8/qng;->mAntStore:Lc8/Ong;

    invoke-virtual {v0, p1}, Lc8/Ong;->isGroupInWhitelist(Lc8/Vng;)Z

    move-result v0

    return v0
.end method
