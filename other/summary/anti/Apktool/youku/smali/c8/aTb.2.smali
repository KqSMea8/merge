.class public Lc8/aTb;
.super Lc8/YSb;
.source "Propertys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/bTb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Property"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lc8/YSb;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "readOnly"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lc8/YSb;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 22
    return-void
.end method
