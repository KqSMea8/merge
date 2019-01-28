.class public Lc8/KMf;
.super Ljava/lang/Object;
.source "AuthParam.java"


# instance fields
.field public bizId:Ljava/lang/String;

.field public failInfo:Ljava/lang/String;

.field public sid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "bizId"    # Ljava/lang/String;
    .param p3, "failInfo"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lc8/KMf;->sid:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lc8/KMf;->bizId:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lc8/KMf;->failInfo:Ljava/lang/String;

    .line 27
    return-void
.end method
