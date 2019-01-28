.class public Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;
.super Ljava/lang/Object;
.source "MemoryDetector.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Srf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StaticVariable"
.end annotation


# instance fields
.field public className:Ljava/lang/String;

.field public fieldName:Ljava/lang/String;

.field public hardReferences:Ljava/util/ArrayList;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isSingleton:Z

.field public retainedHeapSize:J

.field public shadowHeapSize:J

.field public softReferences:Ljava/util/ArrayList;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
