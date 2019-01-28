.class public Lc8/IVo;
.super Ljava/lang/Object;
.source "LanguageBean.java"


# static fields
.field public static final ALL_LANGAUGE:[Lc8/IVo;


# instance fields
.field public code:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 21
    const/16 v0, 0x11

    new-array v0, v0, [Lc8/IVo;

    new-instance v1, Lc8/IVo;

    const-string/jumbo v2, "default"

    const-string/jumbo v3, "\u9ed8\u8ba4\u8bed\u8a00"

    invoke-direct {v1, v4, v2, v3}, Lc8/IVo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lc8/IVo;

    const-string/jumbo v2, "guoyu"

    const-string/jumbo v3, "\u56fd\u8bed"

    invoke-direct {v1, v5, v2, v3}, Lc8/IVo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lc8/IVo;

    const-string/jumbo v2, "yue"

    const-string/jumbo v3, "\u7ca4\u8bed"

    invoke-direct {v1, v6, v2, v3}, Lc8/IVo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lc8/IVo;

    const-string/jumbo v2, "chuan"

    const-string/jumbo v3, "\u5ddd\u8bdd"

    invoke-direct {v1, v7, v2, v3}, Lc8/IVo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lc8/IVo;

    const-string/jumbo v2, "tai"

    const-string/jumbo v3, "\u53f0\u8bed"

    invoke-direct {v1, v8, v2, v3}, Lc8/IVo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-instance v2, Lc8/IVo;

    const/4 v3, 0x5

    const-string/jumbo v4, "min"

    const-string/jumbo v5, "\u95fd\u5357\u8bed"

    invoke-direct {v2, v3, v4, v5}, Lc8/IVo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lc8/IVo;

    const/4 v3, 0x6

    const-string/jumbo v4, "en"

    const-string/jumbo v5, "\u82f1\u8bed"

    invoke-direct {v2, v3, v4, v5}, Lc8/IVo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lc8/IVo;

    const/4 v3, 0x7

    const-string/jumbo v4, "ja"

    const-string/jumbo v5, "\u65e5\u8bed"

    invoke-direct {v2, v3, v4, v5}, Lc8/IVo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lc8/IVo;

    const/16 v3, 0x8

    const-string/jumbo v4, "kr"

    const-string/jumbo v5, "\u97e9\u8bed"

    invoke-direct {v2, v3, v4, v5}, Lc8/IVo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lc8/IVo;

    const/16 v3, 0x9

    const-string/jumbo v4, "in"

    const-string/jumbo v5, "\u5370\u5ea6\u8bed"

    invoke-direct {v2, v3, v4, v5}, Lc8/IVo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lc8/IVo;

    const/16 v3, 0xa

    const-string/jumbo v4, "ru"

    const-string/jumbo v5, "\u4fc4\u8bed"

    invoke-direct {v2, v3, v4, v5}, Lc8/IVo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lc8/IVo;

    const/16 v3, 0xb

    const-string/jumbo v4, "fr"

    const-string/jumbo v5, "\u6cd5\u8bed"

    invoke-direct {v2, v3, v4, v5}, Lc8/IVo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lc8/IVo;

    const/16 v3, 0xc

    const-string/jumbo v4, "de"

    const-string/jumbo v5, "\u5fb7\u8bed"

    invoke-direct {v2, v3, v4, v5}, Lc8/IVo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lc8/IVo;

    const/16 v3, 0xd

    const-string/jumbo v4, "it"

    const-string/jumbo v5, "\u610f\u5927\u5229\u8bed"

    invoke-direct {v2, v3, v4, v5}, Lc8/IVo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lc8/IVo;

    const/16 v3, 0xe

    const-string/jumbo v4, "es"

    const-string/jumbo v5, "\u897f\u73ed\u7259\u8bed"

    invoke-direct {v2, v3, v4, v5}, Lc8/IVo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lc8/IVo;

    const/16 v3, 0xf

    const-string/jumbo v4, "th"

    const-string/jumbo v5, "\u6cf0\u8bed"

    invoke-direct {v2, v3, v4, v5}, Lc8/IVo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lc8/IVo;

    const/16 v3, 0x10

    const-string/jumbo v4, "po"

    const-string/jumbo v5, "\u8461\u8404\u7259\u8bed"

    invoke-direct {v2, v3, v4, v5}, Lc8/IVo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lc8/IVo;->ALL_LANGAUGE:[Lc8/IVo;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "lanid"    # I
    .param p2, "lanCode"    # Ljava/lang/String;
    .param p3, "lanDesc"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lc8/IVo;->id:I

    .line 38
    iput-object p2, p0, Lc8/IVo;->code:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lc8/IVo;->desc:Ljava/lang/String;

    .line 40
    return-void
.end method
