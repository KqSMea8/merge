.class public Lc8/DF;
.super Ljava/lang/Object;
.source "WVPatchConfig.java"


# instance fields
.field public jsString:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lc8/DF;->jsString:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lc8/DF;->pattern:Ljava/util/regex/Pattern;

    .line 33
    iput-object v0, p0, Lc8/DF;->key:Ljava/lang/String;

    return-void
.end method
