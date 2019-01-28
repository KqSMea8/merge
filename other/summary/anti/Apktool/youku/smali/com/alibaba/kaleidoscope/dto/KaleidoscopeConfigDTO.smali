.class public Lcom/alibaba/kaleidoscope/dto/KaleidoscopeConfigDTO;
.super Ljava/lang/Object;
.source "KaleidoscopeConfigDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public isAble:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeConfigDTO;->isAble:I

    return-void
.end method
