.class public Lc8/Dnf;
.super Ljava/lang/Object;
.source "IncomingAppBlackList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Enf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlackListItem"
.end annotation


# instance fields
.field public packageName:Ljava/lang/String;

.field public tip:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tip"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lc8/Dnf;->packageName:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lc8/Dnf;->tip:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lc8/Dnf;->url:Ljava/lang/String;

    .line 67
    return-void
.end method
