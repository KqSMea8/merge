.class public abstract Lc8/MNb;
.super Ljava/lang/Object;
.source "KaleidoscopeRenderPlugin.java"


# instance fields
.field public data:Ljava/lang/Object;

.field public kaleidoscopeConfigDTO:Lcom/alibaba/kaleidoscope/dto/KaleidoscopeConfigDTO;

.field protected onLoadListener:Lc8/TNb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 29
    iput-object p3, p0, Lc8/MNb;->data:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public creatView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-virtual {p0, p2}, Lc8/MNb;->parseConfigDTO(Ljava/lang/String;)Lcom/alibaba/kaleidoscope/dto/KaleidoscopeConfigDTO;

    move-result-object v0

    iput-object v0, p0, Lc8/MNb;->kaleidoscopeConfigDTO:Lcom/alibaba/kaleidoscope/dto/KaleidoscopeConfigDTO;

    .line 26
    return-void
.end method

.method public abstract fireEvent(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract parseConfigDTO(Ljava/lang/String;)Lcom/alibaba/kaleidoscope/dto/KaleidoscopeConfigDTO;
.end method

.method public setOnLoadListener(Lc8/TNb;)V
    .locals 0
    .param p1, "onLoadListener"    # Lc8/TNb;

    .prologue
    .line 33
    iput-object p1, p0, Lc8/MNb;->onLoadListener:Lc8/TNb;

    .line 34
    return-void
.end method
