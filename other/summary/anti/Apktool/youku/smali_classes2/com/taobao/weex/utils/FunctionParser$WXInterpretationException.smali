.class public Lcom/taobao/weex/utils/FunctionParser$WXInterpretationException;
.super Ljava/lang/RuntimeException;
.source "FunctionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Xfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WXInterpretationException"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lc8/Ufg;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lc8/Ufg;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/taobao/weex/utils/FunctionParser$WXInterpretationException;-><init>(Ljava/lang/String;)V

    return-void
.end method
