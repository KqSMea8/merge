.class public interface abstract annotation Lc8/uMf;
.super Ljava/lang/Object;
.source "Implementation.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lc8/uMf;
        injectType = .enum Lcom/taobao/tao/purchase/inject/InjectType;->DEFAULT:Lcom/taobao/tao/purchase/inject/InjectType;
        singleton = false
        target = {}
        value = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract injectType()Lcom/taobao/tao/purchase/inject/InjectType;
.end method

.method public abstract singleton()Z
.end method

.method public abstract target()[Ljava/lang/Class;
.end method

.method public abstract value()[Ljava/lang/String;
.end method
