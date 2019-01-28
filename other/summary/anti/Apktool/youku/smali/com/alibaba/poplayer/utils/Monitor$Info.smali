.class public Lcom/alibaba/poplayer/utils/Monitor$Info;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/poplayer/utils/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field public final field:Ljava/lang/String;

.field public final suzerain:Ljava/lang/Object;

.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "suzerain"    # Ljava/lang/Object;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/alibaba/poplayer/utils/Monitor$Info;->suzerain:Ljava/lang/Object;

    .line 34
    iput-object p2, p0, Lcom/alibaba/poplayer/utils/Monitor$Info;->field:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/alibaba/poplayer/utils/Monitor$Info;->value:Ljava/lang/Object;

    .line 36
    return-void
.end method
