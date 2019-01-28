.class public Lcom/alibaba/kaleidoscope/dto/KaleidoscopeError;
.super Ljava/lang/Object;
.source "KaleidoscopeError.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final KSErrorCodeData:I = 0x2

.field public static final KSErrorCodeNetwork:I = 0x3

.field public static final KSErrorCodeRenderFailed:I = 0x5

.field public static final KSErrorCodeRenderTemplate:I = 0x4

.field public static final KSErrorCodeUnknown:I = 0x1


# instance fields
.field private final errorCode:I

.field private final renderPluginError:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "renderPluginError"    # Ljava/lang/Object;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeError;->errorCode:I

    .line 23
    iput-object p2, p0, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeError;->renderPluginError:Ljava/lang/Object;

    .line 24
    return-void
.end method
