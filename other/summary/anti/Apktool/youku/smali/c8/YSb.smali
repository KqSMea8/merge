.class public Lc8/YSb;
.super Ljava/lang/Object;
.source "Options.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ZSb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Option"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field readOnly:Z

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/YSb;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 25
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "readOnly"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lc8/YSb;->name:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lc8/YSb;->value:Ljava/lang/Object;

    .line 20
    iput-boolean p3, p0, Lc8/YSb;->readOnly:Z

    .line 21
    return-void
.end method
