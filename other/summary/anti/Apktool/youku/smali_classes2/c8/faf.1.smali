.class public Lc8/faf;
.super Ljava/lang/Object;
.source "DinamicViewAdvancedConstructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/gaf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodInfo"
.end annotation


# instance fields
.field attrSet:[Ljava/lang/String;

.field method:Ljava/lang/reflect/Method;

.field params:[Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;[Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "a"    # [Ljava/lang/String;
    .param p3, "p"    # [Ljava/lang/Class;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lc8/faf;->method:Ljava/lang/reflect/Method;

    .line 31
    iput-object p2, p0, Lc8/faf;->attrSet:[Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lc8/faf;->params:[Ljava/lang/Class;

    .line 33
    return-void
.end method
