.class public final Lc8/Aob;
.super Ljava/lang/Object;
.source "AliWXSDKEngine.java"

# interfaces
.implements Lc8/wVf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Bob;->initFramework()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCrashInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-static {}, Lc8/XSb;->getInstance()Lc8/XSb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/XSb;->addNativeHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lc8/Bob;->access$000()Lc8/Tob;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    invoke-static {}, Lc8/Bob;->access$000()Lc8/Tob;

    move-result-object v0

    invoke-virtual {v0, p2}, Lc8/Tob;->setCurCrashUrl(Ljava/lang/String;)V

    .line 214
    :cond_0
    return-void
.end method
