.class public Lc8/IWc;
.super Ljava/lang/Object;
.source "PageLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/JWc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageInfo"
.end annotation


# instance fields
.field public pageName:Ljava/lang/String;

.field public spm:Ljava/lang/String;

.field final synthetic this$0:Lc8/JWc;


# direct methods
.method private constructor <init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lc8/JWc;
    .param p2, "pageName"    # Ljava/lang/String;
    .param p3, "spm"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lc8/IWc;->this$0:Lc8/JWc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/IWc;->pageName:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/IWc;->spm:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lc8/IWc;->pageName:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lc8/IWc;->spm:Ljava/lang/String;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V
    .locals 0
    .param p1, "x0"    # Lc8/JWc;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lc8/HWc;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
