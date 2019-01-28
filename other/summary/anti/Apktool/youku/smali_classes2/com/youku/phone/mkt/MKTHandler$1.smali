.class public Lcom/youku/phone/mkt/MKTHandler$1;
.super Ljava/util/HashMap;
.source "MKTHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/dzk;->init(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/dzk;


# direct methods
.method public constructor <init>(Lc8/dzk;)V
    .locals 2
    .param p1, "this$0"    # Lc8/dzk;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 76
    iput-object p1, p0, Lcom/youku/phone/mkt/MKTHandler$1;->this$0:Lc8/dzk;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 77
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "powermsg-youku"

    invoke-virtual {p0, v0, v1}, Lcom/youku/phone/mkt/MKTHandler$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "pmmonitor-youku"

    invoke-virtual {p0, v0, v1}, Lcom/youku/phone/mkt/MKTHandler$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method
